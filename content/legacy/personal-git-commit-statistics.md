---
id: 9
outputs:
  - /en/personal-git-commit-statistics/index.html
  - /articles/personal-git-commit-statistics/index.html
  - /9/index.html
language: en
title: Personal Git Commit Statistics
description: A list of possible solutions to track your personal commit statistics
---

Update&#58; Thomas Buchöster and I built [Hulkort][5], a website which let's you track your Git commit statistics with the help of Git hooks!

I like data.
I love having data about myself.
So naturally I love tracking data about myself.

## What and Why
Programming is one field where I track nearly no data about myself. But I would love to, since I do it all the time. A friend, [Christian Winkler][4], and I once wrote a [plugin][1] for our favorite editor [Sublime Text][2], that would track how many seconds you spend working on a specific file. It worked, but the data was not really useful at all. Atleast I had proof that I think more than I press keys.

So how about using Git as medium to get some decent programming metrics? The number of commits one makes is in my opinion the most representative one. Lines of code added / changed / deleted is not really suitable since adding a framework like Ruby on Rails will falsify the data.

## Possible Solutions
But how can I track how many commits I make?

### #1 Pen And Paper
Making notes myself everytime I commit. Easy and transparent, but it's impossible to automate this process.

### #2 GitHub API
Since most of my projects are hosted at GitHub I could use their API and get the commit count for my account. Super easy, but also not possible at the moment according to their support.

### #3 Git Commands On Local Repositories
With Gits commands I could filter out the commit count for my author name on each repository. A possible solution, although it feels like a hack and is not so easy to do.

### #4 GitHub Hooks
GitHub provides [hooks][3] for every repository. I could enter a callback url which gets pinged every time a push happens. To do this, you need admin access to the repository.

### #5 Personal Git Hook
I could write my own Git hook and add it to all my repositories. Each time I commit, the hook would ping a web server to notify it of the new commit. Being not online is a problem with this solution. In this case you could save it locally, but this makes everything even more complicated.

## Conclusion
I'm not sure which path I will go down, at the moment the "Personal Git Hook" looks like the best option. But maybe there is someone with an even better idea! Anyone?

[1]: http://www.sublimetext.com/forum/viewtopic.php?f=5&t=961
[2]: http://www.sublimetext.com/
[3]: http://help.github.com/post-receive-hooks/
[4]: http://cwinkler.multimediatechnology.at/
[5]: http://hulkort.herokuapp.com/
