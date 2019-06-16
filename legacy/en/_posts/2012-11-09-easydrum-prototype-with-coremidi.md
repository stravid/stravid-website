---
layout: english_post
title: "easydrum Prototype With CoreMIDI"
date: 2012-11-09 09:31
---

*I wrote a little OS X application over the course of 4 days to test a game idea. The application connects via CoreMIDI to an electronic drum set. Then it tells the player to play certain drums in a specific order. It checks the correct order and gives  feedback.*

My girlfriend currently studies for her master's degree. Over the course of two years she has to complete a big project. Her project idea is called "easydrum". It's about learning how to play the drums with the help of a program. There is also an website where you can create and upload new lessons or get lessons for yourself.

Since my girlfriend can't program, and the programmers she knows  at the university have no experience working with electronic drum sets, there is a lot of talk based on assumptions. I felt I had to provide a few facts on the technical side, so I decided to build a little prototype.

The only problem: I'm usually programming Ruby and CoffeeScript but the project looks more like an OS X application since a user should be able to install it. So where do you start? Simple, you jump into a deep pool with Objective-C sharks and start swimming.

After four days of hacking around I had a little game prototype. The game tells the player which drum he should play and validates the correctness. In order to get to this point I had to do several things:

## Learn to speak MIDI
What is MIDI? Basically MIDI is a specification / protocol that allows digital music instruments, computers and other related devices talk to each other. You can [read more](http://en.wikipedia.org/wiki/MIDI) about it on Wikipedia. MIDI allows us to interact with the electronic drum set.

But I don't speak MIDI at all. Thankfully the Cocoa framework provides us with CoreMIDI. After messing around for a few hours I was able to list all connected MIDI devices. With the help of [this tutorial](http://comelearncocoawithme.blogspot.co.at/2011/08/reading-from-external-controllers-with.html) I managed to log a string to the console every time I received something from the electronic drum set.

*Note: While my test device, a simple keyboard, worked perfectly, I had to install the drivers for Roland's TD-11 drum set to make it work.*

The next step was to understand the data from the drum set. Before I tackled this problem I wanted to get rid of most of my code. After a brief search I found the excellent [PGMidi](https://github.com/petegoodliffe/PGMidi) library. PGMidi is written for iOS so I had to modify it a little bit two make it work on OS X. Specifically I removed the network and UI part.

After rewriting my application to use PGMidi I started reading about MIDI and how to interpret the data I received. The gotcha about CoreMIDI is the fact that it doesn't help you with the MIDI data. It only gives you a list of packets where each packet can hold one or more MIDI messages. In order to figure out which messages and data you get, you have to parse the packets on your own. This [MIDI specification](http://home.roadrunner.com/~jgglatt/tech/midispec.htm) helped me a lot.

When I was able to decode the received packets into messages and  read them, I made a test run with the drum set. The test runs goal was to see what kind of messages the drum set sends when it is played. The result: It sends a lot. To keep things simple, I decided at this point to only deal with "Note on" messages. All other messages will be ignored by the program. This decision helped a lot, especially the parsing got simplified.

## Introduce the application to the drum set
A MIDI "Note on" message contains two data points. The first is the note which got played and the second tells us with which velocity. For the prototype only the note value is interesting. The note is a value between 0 and 127. From this value the application can't tell if the snare, bass or a different drum got played.

The solution to this problem is called mapping. The different note values have to be mapped to actual drums. So when the application is started it goes through the list of drums it needs to know. For each list entry it asks the player to play the correct drum once. The application then stores the note value for the particular drum. This way it can later correctly identify which drum got played.

Without this mapping the application only knows that something just got played, but not which drum in particular.

## Create the game
At this point I had all the data I needed and could finally create the game. Since it's just a prototype the game is pretty simple. The application generates a random play order with a given amount of items. A play order is a simple list with instructions what drum should be played. It looks like this:

Bass  
Snare  
Snare  
High Tom  
Bass  
… 

The application then proceeds to display the first item to the player. Whenever the player plays a drum it checks if the correct drum was played. Without the mapping we created in the step above this wouldn't be possible. If the player hit the correct drum the application displays the next item. If the wrong drum was played, it displays an error and encourages the player to try again.

When the player finished playing all items correctly the application displays the time it took him to finish and how many mistakes he made. If the player wishes to, he can start a new game and play again.

## Conclusion
First of all, for a web developer like me, it was fun to work with hardware. It was a welcome change to my usual work. Although Objective-C and OS X programming was completely new to me it was surprisingly easy but at times also really frustrating. The parts covered by CoreMIDI were relatively easy, only when it got to message reading things got complicated due to the format of the MIDI protocol.

For the future of easydrum it was really good that I took the time and built this little prototype. There are a few details about how this whole MIDI thing works, that my girlfriend didn't think about. But now she has a better understanding of the material and can make more informed decisions. For example some play combinations result in two "Note on" messages in rapid succession which the application has to deal with. If the player doesn't play clean the application will also get several messages although technically he only played a drum once.

The good thing is that the prototype showed that it's possible to work with MIDI and an electronic drum set.