---
id: 55
outputs:
  - /55-the-technology-behind-www-stravid-com/index.html
  - /55/index.html
language: en
title: The technology behind www.stravid.com
description:
---

# The technology behind www.stravid.com

The source code of this website dates back to October 2012. It started out with the static site generator Jekyll. Over the years I grew unhappy with this setup. Due to neglect on my part Jekyll never got updated and was soon outdated beyond hope. On the other hand I learned that chasing shiny new toys will never lead me to a happy place. So my focus shifted towards robustness and durability.

At the beginning of 2019 I had the urge to publish new stuff on www.stravid.com without dealing with Jekyll at all. Therefore I started using plain old HTML but soon realized this was going to be a mess. So I made the long overdue switch from Jekyll to something better, in my case Nanoc which is also a static site generator.

- All pages dating back to 2012 still work. It took a while to move them but in the end no content was lost nor a link broken. This is important because [cool URIs don't change](https://www.w3.org/Provider/Style/URI).

- To prevent breaking URIs in the future I decided to introduce an `id` for every page. The ID acts as anchor that will never change. Now URIs, like the one of this page, can be constructed that are SEO friendly but will not prevent future use for different pages. The computer ensures that the IDs are a gapless sequence and can tell the next ID for a new page.

- The filesystem structure of the content does not dictate the URI structure at all. Instead a page can declare multiple URIs that point to the same page. HTML based redirects make the crawlers of search engines happy. The computer ensures that all URIs are unique.

- The implementation of the "Open random page" button in the footer is based upon the ID and redirect mechanisms.

- It is possible to publish HTML pages directly without going through the static site generator processing. Again the computer makes sure that such standalone pages don't collide with other URIs.

- Make is used as an interface for the developer, me. This protects me from learning the syntax from yet another tool.

More or less the moment I was finished with the content migration I read [Writing HTML in HTML by John Ankarström](http://john.ankarstrom.se/html/). The idea to treat every page as a self-contained capsule is very intriguing to me. As long as your URIs don't change, and they shouldn't, there would be no content migration ever. So I will keep that in the back of my mind. Maybe I can combine my ID approach with Johns idea in the future.
