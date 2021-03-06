---
id: 17
outputs:
  - /cqrs-event-sourcing-research.html
  - /17/index.html
language: en
title: CQRS and Event Sourcing Research by David Strauß
description: Collection of thoughts, ideas and practices gained by working with event based systems.
---

<h1>CQRS, Event Sourcing Research</h1>

<p>
  In the freshly released time tracking area of Tedian a new error popped up in the event store implementation. Some interactions in the GUI sporadically caused <code>PG::UniqueViolation</code> errors in the event store.
</p>

<p>
  The event store is built upon PostgreSQL and uses an events table. One mechanism to ensure correctness is an unique constraint on <code>stream_name</code> and <code>position</code>. In plain english it means that within a stream of events every position can be only occupied once.
</p>

<p>
  As mentioned above this constraint was being violated sporadically. The cause were multiple commands, affecting the identical event stream, being submitted in rapid succession.
</p>

<p>
  The multithreaded application server accepted the commands simultaneously, invoked the command handlers and submitted the resulting events to the event store. Every so often two write transactions to the <code>events</code> table would overlap and cause the aforementioned error.
</p>

<p>
  <s>This failure scenario immediately reminded me of optimistic locking. A feature that the event store supports but that is not used in this case. The commands are non-destructive and the order doesn't matter. But I think it's not the same problem.</s>
</p>

<p>
  <s>Optimistic locking is supposed to protect against scenarios where a command was handled and the resulting events published during the invocation of another command.</s>
</p>

<p>
  <s>This problem occurs because two writes to the same event stream happen at the same time. Which sounds the same but I think there is a subtle difference I can't articulate yet.</s>
</p>

<p>
  <s>How do I solve this?</s>
</p>

<ol>
  <li><s>Implement a retry logic for such cases.</s></li>
  <li><s>Have a single event store writer.</s></li>
  <li><s>Ensure that commands are submitted sequentially.</s></li>
</ol>

<p>
  <s>I went with option three for the time being but I don't know how to proceed</s>.
</p>

<p>
  On the GUI side I solved the problem by ensuring that the commands are sent sequentially instead of parallel. This solved the production failures and bought us time to dwell on this issue without time pressure. I researched how the <a href="https://eventide-project.org/">Eventide</a> project solves this particular problem and learned about exclusive PostgreSQL advisory locks in the process. (<a href="https://github.com/eventide-project/message-store-postgres-database/tree/master/database/functions">Relevant source code directory</a>, <a href="https://github.com/eventide-project/message-store-postgres/commit/5e81fff4111155798a22f206528c20a4bfc4b6c3">Initial solution</a> and <a href="https://github.com/eventide-project/message-store-postgres/commit/68867eae6abceacb41f81397688463bcd3ced1fe">Improved solution</a>.) After making sure this actually solved the concurrency problem I adopted the approach into my own event store implementation.
</p>

<p>
  How does optimistic locking work with multiple events from one command if there is a clash with a different command that resulted also in multiple events?
</p>

<p>
  <strong>Possible answer: Use another lock within a transaction to ensure all events are written as batch. At the moment I don't know if this can work and how it interacts with the lock on the stream. I also realised that the event store can only write multiple events to the same stream. My implementation already implicitly requires that but it's good to be explicitly aware of this fact.</strong>
</p>

<p>
  I think sending multiple commands at the same time is an anti-pattern. There should be a single bulk command to allow for recovery in failure scenarios.
</p>
