---
layout: page
title: "iPhone Apps"
comments: false
sharing: false
footer: true
---

<div id="app_listing">
{% for page in site.iphone_pages %}
  <app>
    <a href="{{ root_url }}{{ page.url | replace:'/index.html' }}"><img src="{{ root_url }}/images/apps/{{page.app | downcase}}.png">{{page.title}}</a>
  </app>
{% endfor %}
</div>