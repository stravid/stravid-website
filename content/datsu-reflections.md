---
id: 58
outputs:
  - /58-dartboard-io-retrospection/index.html
  - /58/index.html
language: en
title: Legacy Project Retrospection - Facing My Shortcomings
description: Working on my own legacy software made me face some of my shortcomings. This is an attempt at documenting them so you and I can learn from them.
---

# Legacy Project Retrospection — Facing My Shortcomings
Starting from August until the middle of November 2019 I worked on a project called dartboard.io which is an [online darts scorer](https://app.dartboard.io). I learned a lot about myself and software development. This is my attempt at documenting what I learned for my future self. Maybe it’s also helpful to you. As clickbait as it may sound, it will cover Ember.js, Event Sourcing, Statecharts, keeping up motivation, how to handle feedback, the importance of user tests, robust user interfaces and delivery speed.

Background information: The first commit dates back to the 31. December 2014. In the almost five years a lot happened and the darts scorer gained a loyal player base. ([View dartboard.io player and match statistics](/dartboard-io-statistics.png)). But it was clear that it needed a lot of love to stay a viable darts scorer.

So, I set out to fix the biggest issue the darts scorer was facing: It used a fixed width layout which made it unusable on mobile devices. To overcome the problem of having no motivation for working on this legacy mess I told myself I would work 30 minutes a day on the project. The plan was to do this for 30 days straight and get a mobile version done.

This went well for the initial 20 days. At this point it became clear that no end was in sight. My estimation was dead wrong for various reason. Basically I was running in the wrong direction. My motivation went out the window like hot air on a cold night. After two weeks of frustration with no work and progress to show I made the decision to cancel the experiment and throw away the unfinished work.

I started again with a different approach. After 26 days and 54 commits I reached the finish line and dartboard.io became a [mobile darts scorer](https://app.dartboard.io). A key ingredient was continued delivery on my part.

## Deploy Each and Every Commit
Or at least try to do so. Starting at the simple parts of the application and going screen by screen allowed me to deploy almost every evening. This kept up my spirits and forced me to stay on course.

Towards the end I struggled to do my deploys. I couldn’t convince myself to deploy when only a part of a multistep process was done. I told myself the visual differences would alienate my users and nobody would ever use the application again.

For the future I want to explore real continues delivery where the computer takes this pressure of my shoulders. In addition, having feature flags based on the user would have helped greatly. In gnarly cases the changes are only visible to me.

##  Event Sourcing: Make Everything Explicit
The first version of dartboard.io was basically a CRUD architecture. Thankfully, I stumbled upon Domain Driven Design and went on to discover Event Sourcing. Using Event Sourcing for the core of the software was the best decision I made on this project. It’s a perfect fit for the problem domain. Unfortunately it was my first time using Event Sourcing.

Unknowingly I modelled a few things implicit instead of explicit. I didn’t perceive this as a problem at the time since my model allowed me to do everything I wanted, until I later decided to add computer players.

At the beginning of the project one event, `PlayerScored`, represented two things at the same time. In addition to the obvious score it also meant that the turn was handed over to the next player in line. Not a smart decision when you need to implement computer players where the turn is only handed over after an explicit interaction.

There are a few of those in my model and I’m not yet sure how I should approach this mess.

## Don’t Build an \<Insert Framework\> Software
The frontend started with Ember.js and Ember CLI. A fine choice in the beginning. Due to increasing bloat on the tooling side and the realization that not every part needs to be a SPA I have the desire to move parts away from Ember.js.

To be honest this would be now a lot easier if I had built a darts application and not an Ember.js application. Be aware and deliberate of what parts of the application are touching framework code. For long-term projects it turns out less is more in this regard.

## Use Statecharts
The universe made me discover [David Khourshid](https://twitter.com/DavidKPiano) and [Statecharts](https://statecharts.github.io/) which I’m very grateful for. First, David is a very kind, helpful and knowledgable person. Thank you for answering the many questions I had! Secondly Statecharts are an incredible way to make one's software more robust in various ways.

In case you are heading over to dartboard.io to see it for yourself I have to disappoint you. Statecharts were only included in the parts I had to throw away. Not because they don’t work but because I was stupid and mixed learning with building.

Most of my current and future work utilizes Statecharts at least in the planning and design phase of new projects and features. It’s hard to describe how useful they are. I encourage you wholeheartedly to educate yourself about them.

## Don’t Get Angry at Your Feedback Givers
Not one of my best character traits. Regrettably I get angry to often when others point out flaws in my finished work. While it got better in the last years I still have a lot to practice.

My current approach is to try to frame them differently. Discovered and reported bugs are something positive. They represent a chance to make my work even better. Receiving feedback is a gift, treat it as such.

## Run Frequent User Tests
Watch people use your software as often as you can. You will discover opportunities to make their lives and your software better. When nobody is around do it yourself. I clicked around a lot during development of the mobile screens. The moment I used it for real, which means I played a game of darts and used my smartphone as device, issues and ideas popped up left and right. I ended up filling a sheet of paper with them. All that after only 15 minutes of real usage.

## Don’t Limit Your User Base Artificially
It was a bad idea from the start to not make the darts scorer work on small screens. I have no idea what I thought back then. Probably that it would be hard and not worth the effort.

Looking back it was incredibly stupid to limit the audience “just because”. Thankfully, I’m slowly learning to let the browser do more. [Every Layout](https://every-layout.dev/) teaches me to write better web applications that don’t break arbitrarily. I’m also learning to let go of JavaScript when it’s not used to move users closer to their goal. Bye-bye SPA trend!

Thank you for reading this far, if you have input I would love to hear it.
