---
title: Todo
hidden: true
---
Todo list.

{% for model in site.fleat %}
{% unless model.todo %}
Attention&nbsp;: la description de {{ model.name }} n'a pas de section "à faire".
{% endunless %}
{% endfor %}

En général
----------

- investiguer le vol en immersion&nbsp;: trouver le bon écran ou les bonnes lunettes et choisir des émetteurs/récepteurs. Ne pas oublier les options comme utiliser l'écran du télephonne ou d'un ordinateur ou du NexDock.

Sur les modèles
---------------

<div class="row">
{% assign models = site.fleat | where_exp: "model", "model.todo[0]" %}
{% for model in models %}
<div class="col-xs-4">
### {{ model.name }}
{% for todo in model.todo %}
- {{ todo }}{% endfor %}
</div>
{% assign index = forloop.index | modulo: 3 %}
{% if index == 0 %}<div class="clearfix"></div>{% endif %}
{% endfor %}
</div>

{% include links_by_title.md %}
