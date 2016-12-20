---
title: La flotte
---
Mes avions.

<div class="row">
{% assign planes = site.fleat | sort: 'display_order' %}
{% for plane in planes %}
<div class="col-lg-4 col-md-6">

## {{ plane.name }}

![{{ plane.name }}]({{ plane.name | slugify }}.jpg){:class="img-fluid"}

{{ plane.origin }}

Envergure&nbsp;: {{ plane.wingspan }}&nbsp;cm,
longueur&nbsp;: {{ plane.length }}&nbsp;cm,
poids en vol&nbsp;: {{ plane.weight }}&nbsp;g,
poussée&nbsp;: {{ plane.thrust }}&nbsp;g{% if plane.current %} (pour {{ plane.current }}&nbsp;A i.e. {{ plane.power }}&nbsp;W){% endif %}

Batteries&nbsp;: {{ plane.battery }}

Récepteur&nbsp;: {{ plane.receiver }}

Contrôleur&nbsp;: {{ plane.esc }}

Moteur&nbsp;: {{ plane.motor }}

Hélice&nbsp;: {{ plane.propeller }}

Servos&nbsp;:
{% for servo in plane.servos %}
- {{ servo.role }}&nbsp;: {% if servo.count %}{{ servo.count }} fois {% endif %}{{ servo.model }}{% endfor %}

{{ plane.output }}{{ plane.content }}
</div>
{% assign index = forloop.index | modulo: 2 %}
{% if index == 0 %}<div class="clearfix hidden-lg-up"></div>{% endif %}
{% assign index = forloop.index | modulo: 3 %}
{% if index == 0 %}<div class="clearfix hidden-md-down"></div>{% endif %}
{% endfor %}
</div>

{% for link in site.data.links %}
[{{ link.title }}]: {{ link.url }}
{% endfor %}
