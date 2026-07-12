---
layout: page
permalink: /publications/
title: publications
description: peer-reviewed publications in reverse chronological order
nav: true
nav_order: 1
pub_numbering: true
---

<!-- _pages/publications.md -->

<p class="pub-total">{% bibliography_count %} peer-reviewed publications</p>

<style>
  /* room for the static [n] marker rendered by the bib template */
  .publications ol.bibliography > li {
    position: relative;
    padding-left: 3.4rem;
    margin-bottom: 2rem;
  }
  .publications .pub-num {
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
