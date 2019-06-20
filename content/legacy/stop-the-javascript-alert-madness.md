---
id: 16
outputs:
  - /en/stop-the-javascript-alert-madness/index.html
  - /blog/2010/09/stop-the-javascript-alert-madness/index.html
  - /16/index.html
language: en
title: Stop the Javascript alert() madness
description:
---

<p>
We have the year 2010 and there are still people out there using <code>alert()</code> to debug javascript code.
</p>
<p>
<pre>
function doSomeMagic(argument) {
    alert('doSomeMagic argument: ' + argument);

    // do the magic stuff

    return argument;
}
</pre>
</p>
<p>
This is madness! In times of <a href="http://trac.webkit.org/wiki/WebInspector">Web Inspector</a> and <a href="http://getfirebug.com/">Firebug</a> it’s pure masochistic to use an <code>alert()</code> for this kind of stuff. What, still not convinced? Here are some arguments against <code>alert()</code>:
</p>
<ul>
  <li>You have to click away every single alert window and your program stops running while the alert is open.</li>
  <li>This will drive you crazy once you put your alert code accidentally in a loop.</li>
  <li>No overview. Even when there are more alerts in the code you will always see only one at a time and once you have clicked it away it’s gone forever.</li>
</ul>
<p>
Convinced programmers let me show you a more convenient way of doing this! First of all you have to use a proper browser, with both <a href="http://www.google.com/chrome">Chrome</a> and <a href="http://www.apple.com/at/safari/">Safari</a> you are good to go. In <a href="http://www.mozilla-europe.org/de/firefox/">Firefox</a> you have to install the <a href="http://getfirebug.com/">Firebug extension</a> or wait until they have a native Javascript console.
</p>
<p>
Now you can use the <code>console</code> object to your advantage, with the <code>log</code> method you can write your debug messages to the console.
</p>
<p>
<pre>
function doSomeMagic(argument) {
    console.log('doSomeMagic argument: ' + argument);

    // do the magic stuff

    return argument;
}
</pre>
</p>
<p>
To access the console in Chrome and Safari you right click in the page and select the menu point "Inspect Element".
In the new window you click in the left bottom corner the console button.
</p>
<p>
In Firefox you open up Firebug and switch to the console tab to view your logged messages.
</p>
<p>
A very sweet feature is the so called object hyperlink, if you log a object with the console it will generate an object hyperlink in the console output. You can click on it to get a nice formatted look at the object and all its attributes and values.
</p>
<p>
<pre>
var myObject = {
    info: 'Some random object',
    weight: 42,
    trackingList: [21, 13, 7]
};

// will create a object hyperlink
console.log(myObject);
</pre>
</p>
<p>
<code>console</code> offers many more handy methods to inspect and control your Javascript code so give it a chance and check it out!
</p>
