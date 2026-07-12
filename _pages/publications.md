---
layout: page
permalink: /publications/
title: publications
description: peer-reviewed publications in reverse chronological order
nav: true
nav_order: 1
---

<!-- _pages/publications.md -->

{% capture pubcount %}{% bibliography_count %}{% endcapture %}
{% assign bibnum_start = pubcount | plus: 1 %}

<p class="pub-total">{{ pubcount }} peer-reviewed publications</p>

<style>
  /* numbered entries, counted down from the total — scoped to this page */
  .publications ol.bibliography {
    counter-reset: bibnum {{ bibnum_start }};
  }
  .publications ol.bibliography > li {
    counter-increment: bibnum -1;
    position: relative;
    padding-left: 3.4rem;
    margin-bottom: 2rem;
  }
  .publications ol.bibliography > li::before {
    content: "[" counter(bibnum) "]";
    position: absolute;
    left: 0;
    top: 0;
    font-weight: 600;
    color: var(--global-theme-color);
  }
</style>

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

{% bibliography %}

</div>
