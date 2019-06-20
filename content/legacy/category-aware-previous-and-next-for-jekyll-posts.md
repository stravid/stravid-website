---
id: 25
outputs:
  - /en/category-aware-previous-and-next-for-jekyll-posts/index.html
  - /25/index.html
language: en
title: Category Aware Previous And Next For Jekyll Posts
description:
---
# Category Aware Previous And Next For Jekyll Posts

*A Jekyll post has the two attributes `previous` and `next` for accessing the previous or next post of the current post. These two attributes are not aware of categories. This has the implication that you can get incorrect posts for `previous` and `next` when used in the context of a specific category. To solve this problem I wrote a custom Jekyll generator which creates correct previous and next attributes for every category.*

In my last post where I talked about [simple one command FTP deploys](http://stravid.com/en/jekyll-one-command-ftp-deploys/) I mentioned that I rebuilt this website. Part of this rewrite was the separation of german and english posts. Previously my website consisted of a single list mixed with both german and english posts. In order to give visitors who can only read one of the two languages a better experience, I decided to split the  posts into two different archives.

To achieve this with Jekyll I had to create two folders at first, namely "en" and "de". The second step was to sort the posts into the correct folders. After that it was time to create the archive pages. As you can see at the [english archive page](http://stravid.com/en/) I split the posts by year. To accomplish this year by year split I use the `next` attribute of the posts. This is the point where things got weird.

I had copied the code from my old archive and modified it so it would loop only through the posts of a single category instead of all posts. Instead of working like before my archive page was suddenly broken. The chronological order was intact but a few posts were listed in the wrong year.

After a lot of googling without finding anything even remotely relevant I decided to read Jekyll's source code and there was the explanation: The `previous` and `next` attributes of a post are not aware of categories. So if you loop through all posts from the "en" category, it is possible that the "next" post is from the "de" category. This behaviour caused the weird glitches in my archive pages.

So the question is the following: How can I get next and previous attributes for each category?

Since Jekyll doesn't provide such a feature I had to solve it on my own. I opted for a custom plugin, specifically a custom generator. A generator is a Jekyll plugin which lives in the `_plugin` directory, you can [read more about plugins](https://github.com/mojombo/jekyll/wiki/Plugins) on GitHub.

The `CategoryAwareNextGenerator` is pretty simple, take a look at the [source](https://gist.github.com/4078840).

It loops through all categories, then it sorts the posts within a category before looping through them. In the innermost loop the generator gets the correct next post and stores it as a new attribute of the current post. The attribute name is a combination of the category name and the word "next". This gives me the ability to get the next post for a specific category.

For example getting the next post in the "en" category looks like this:

`current_post.en_next`

In order to create the archive pages of this website I only needed the category aware next attribute so I did not create a `CategoryAwarePreviousGenerator` plugin. But creating one is pretty straightforward. Just take a look at the [next generator](https://gist.github.com/4078840) and modify it.
