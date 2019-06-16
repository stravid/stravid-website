---
layout: english_post
title: "Harte Tomate - A hardware pomodoro timer reporting to a backend for storing past pomodori"
date: 2014-12-16 19:33
---

I always liked the [pomodoro technique](http://pomodorotechnique.com/) since discovering it a few years back but it never really stuck with me. Three months ago I gave it another honest try and right now I'm still using it everyday at work so it looks like a sucess.

While one benefit is focusing on a specific task at hand the pomodoro technique is helping me in other ways. As a programmer without a standing desk I sit a lot and we all know that this is not healthy. In addition I'm not good at drinking enough water throughout the day, not because I don't like it, there is just nothing that brings me to drink something or refill my empty water bottle.

The pomodoro technique helps me to overcome both issues. I use the auditive signal when the working period of a pomodoro ends as a trigger for specific habits. Whenever I hear that sound I get out of my chair and walk around the office. That's the first healty habit I'm creating. The second habit is about drinking water. After getting away from the computer I drink ¼ liter of water.

It works marvelous, I get more work done by focusing deliberately and also have health benefits. In order to make this work I need a fitting pomodoro timer. Unfortunately none of the apps I tried works for me and even the little [web pomodoro timer](http://stravid.com/projects/pomodoro/) I built a few years ago has major flaws.

So in the middle of october I decided to build my very own physical pomodoro timer with an Arduino Yún and a few electric components. This week I reached the point where I can actually use the second prototype. Take a look and watch the video to see how it works. For testing purposes the work and rest periods are really short so you don't have to watch a 30 minute video ;-)

<div class="video-container"> 
  <iframe src="//fast.wistia.net/embed/iframe/024cpo84g3?videoFoam=true" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed">Harte Tomate Prototype</iframe>
</div>

The pomodoro timer, which I named "Harte Tomate" (hard tomato), is pretty simple. When you push the button a new pomodoro is started. For every five minutes of the total 25 minutes one LED is blinking in green. So for the first five minutes all LEDs are turned off and only the first one is blinking. After five minutes it stops blinking and is permanently on. Instead the second LED starts to blink and signals that we are in the second five minute segment of the pomodoro.

At the end of the 25 minutes a tone is played via the speaker and the five minute rest period starts. During the rest period the LEDs turn red and blink backwards. This time each LED is only blinking for one minute. Here, too a tone is played to signal the end of the period.

The reason I chose the Arduino Yún was the built in WIFI support. I'm a data and statistics fan so I made the pomodoro timer report to a backend so I can keep track of my already finished pomodori. The pomodoro timer dutiful reports whenever a new pomodoro is started and when it ends. In addition it also reports when an in progress pomodoro is aborted which happens when you press the button a second time before the work period finished.

Both the source code running on the Arduino and the backend source code are [available on GitHub](https://github.com/stravid/harte-tomate). You can also take a look at my [past pomodori](http://stravid.com/harte-tomate/) that are already tracked and stored.
