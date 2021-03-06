---
id: 7
outputs:
  - /en/improve-your-javascript-console-log-friendship/index.html
  - /articles/improve-your-javascript-console-log-friendship/index.html
  - /7/index.html
language: en
title: Improve your Javascript console.log friendship
description: Get the most out of console.log
---
<h1>Improve your Javascript console.log friendship</h1>
<p>
In case you wonder what the hell <code>console.log</code> is read my earlier post <a href="http://stravid.com/blog/2010/09/stop-the-javascript-alert-madness/">Stop the Javascript alert() madness</a>.
</p>
<p>
Many developers use the <code>console.log</code> in one particular way to log information, they piece together the message they want to log. Mostly this looks somehow similar to the following example.
</p>
<p>
<pre>
var playerCount = 11,
    userName = 'David';

// magic stuff

console.log('Game statistics: ' + playerCount + ' players online. Logged in as: ' + userName);
// output: Game statistics: 11 players online. Logged in as: David
</pre>
</p>
<p>
This style is perfectly O.K., but not the best we can get because all these <code>+</code> and <code>'</code> make it hard to quickly change the message without breaking it. And in my opinion this style is also confusing and ugly.
</p>
<p>
In order to make it more convenient we can use string substitution patterns in the console.log method. Developers familiar with <code>printf</code> know what I’m talking about, but let me explain it anyway for the Javascript only folks.
</p>
<p>
The first argument of <code>console.log</code> is the message we want to log. We can put placeholders into this string which will get replaced in the output by the values of the additional arguments. There are 5 types of placeholders.
</p>
<ul>
  <li><code>%s</code> for a String value</li>
  <li><code>%d</code> or <code>%i</code> for a Integer value</li>
  <li><code>%f</code> for a Floating point number</li>
  <li><code>%o</code> for an Object hyperlink</li>
</ul>
<p>
<code>console.log</code> will replace the first placeholder in the message string with the first additional argument, the second placeholder with the second additional argument and so forth. The code example from above would look like this if we use placeholders.
</p>
<p>
<pre>
var playerCount = 11,
    userName = 'David';

// magic stuff

console.log('Game statistics: %i players online. Logged in as: %s', playerCount, userName);
// output: Game statistics: 11 players online. Logged in as: David
</pre>
</p>
<p>
Now we have nice looking Javascript code that is easy to modify.
</p>
