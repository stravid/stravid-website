---
id: 5
outputs:
  - /en/adminer-the-small-footprint-alternative-to-phpmyadmin/index.html
  - /articles/adminer-the-small-footprint-alternative-to-phpmyadmin/index.html
  - /5/index.html
language: en
title: Adminer, the small footprint alternative to phpMyAdmin
description: You should use Adminer instead of phpMyAdmin
---
<h1>Adminer, the small footprint alternative to phpMyAdmin</h1>
<p>
I have no clue why most people use <a href="http://www.phpmyadmin.net/home_page/index.php">phpMyAdmin</a> as a graphical user interface when it comes to databases. phpMyAdmin looks horrible and is, in my opinion, bloated.
</p>
<p>
So why use it when there are better solutions? I'm talking about <a href="http://www.adminer.org/en/">Adminer</a>, a script providing the user a graphical interface to deal with his databases. Instead of phpMyAdmin Adminer has a clean looking appearance and doesn't distract the user while working.
</p>
<p>
The main advantage of Adminer is the way it is delivered: In a single <span class="code">.php</span> file!
</p>
<p>
So if you want to use Adminer all you have to do is to create a directory named <span class="code">adminer</span> in your www-root, rename <span class="code">adminer.php</span> to <span class="code">index.php</span> and move it to the newly created directory. Quick and easy!
</p>
<p>
And as a plus point Adminer recently also moved to <a href="https://github.com/vrana/adminer">GitHub</a>.
</p>
