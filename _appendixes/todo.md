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

- appliquer [cette vidéo](https://www.youtube.com/watch?v=AnDQGFhsHjs) pour avoir les voies 1-16 sur le SBUS et 9-16 sur le PWM avec un X8R. Ou pas. Essayer sans avant.

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
