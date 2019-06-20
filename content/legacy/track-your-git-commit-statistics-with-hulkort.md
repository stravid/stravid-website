---
id: 43
outputs:
  - /en/track-your-git-commit-statistics-with-hulkort/index.html
  - /43/index.html
language: en
title: Track Your Git Commit Statistics With Hulkort
description: Thomas Buchöster and I build Hulkort. A simple website allowing you to track your Git commit statistics.
---
# Track Your Git Commit Statistics With Hulkort

[Hulkort][1] helps you tracking your Git commit statistics.
It's as simple as eating ice cream, try it yourself!

## History
Similar to many fellow programmers I like data. Since I spend a lot of time programming I looked for a way to track such data.

I thought Git could provide the best data. So I wrote a [post][2] about the different ways one could use to get statistics from Git.

After some comments on [Hacker News][3] and a bunch of emails I decided to go with a post-commit hook.
After 10 minutes poking around with Git hooks I was tracking my Git commit statistics. [Postbin][4] helped storing the data.

But what is data without graphs? Getting the data from Postbin and putting it into a spreadsheet is a pain.

So I built [Hulkort][1] with the help of Thomas Buchöster.

If you are into statistics like me, you should give it a try! Getting started is a matter of 2 minutes and I would love to hear your feedback!

[1]: http://hulkort.herokuapp.com/
[2]: http://stravid.com/articles/personal-git-commit-statistics/
[3]: http://news.ycombinator.com/item?id=2965626
[4]: http://www.postbin.org/
