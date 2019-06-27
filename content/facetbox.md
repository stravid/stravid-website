---
id: 56
outputs:
  - /56-facetbox/index.html
  - /56/index.html
language: en
title: Facetbox
description:
---

# Facetbox

The [filter used to browse the Zeichenfabrik program is built with PostgreSQL](https://www.zeichenfabrik.at/kurse). During the implementation many things were learned. Facetbox is a research project to determine if alternative solutions are better suited for the problem space.

Possible API to build the index:

~~~
index = Facetbox.build({
  1: {
    term: '2019-summer',
    weekdays: [
      'monday',
      'tuesday',
    ],
  },
  2: {
    term: '2019-summer',
    weekdays: [
      'tuesday',
    ],
  },
  3: {
    term: '2019-winter',
    weekdays: [
      'tuesday',
      'friday',
    ],
  }
})
~~~

Possible API to query index:

~~~
index.find({
  terms: [
    '2019-summer',
  ],
  weekdays: [
    'monday',
  ],
})
~~~

Possible result of a query:

~~~
{
  ids: [1],
  facets: {
    term: [
      { value: '2019-summer', count: 1 },
      { value: '2019-winter', count: 0 },
    ],
    weekdays: [
      { value: 'monday', count: 1 },
      { value: 'tuesday', count: 1 },
      { value: 'friday', count: 0 },
    ],
  },
}
~~~
