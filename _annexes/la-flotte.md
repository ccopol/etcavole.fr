---
title: La flotte
---
Mes modèles.

<div class="row">
{% assign models = site.fleat | where_exp: "model", "model.display_order" | sort: 'display_order' %}
{% for model in models  %}
<div class="col-lg-4 col-md-6">

## {{ model.name }}

[![{{ model.name }}]({{ model.name | slugify }}.jpg){:class="img-fluid"}]({{ model.name | slugify }}-hd.jpg)

{{ model.origin }}

Envergure&nbsp;: {{ model.wingspan }}&nbsp;cm,
longueur&nbsp;: {{ model.length }}&nbsp;cm,
poids en vol&nbsp;: {{ model.weight }}&nbsp;g,
poussée&nbsp;: {{ model.thrust }}&nbsp;g{% if model.current %} (pour {{ model.current }}&nbsp;A i.e. {{ model.power }}&nbsp;W){% endif %}

Batteries&nbsp;: {{ model.battery }}

Récepteur&nbsp;: {{ model.receiver }}

{% include_relative la-flotte_parts.md singular="Contrôleur" part=model.esc plural="Contrôleurs" parts=model.escs %}

{% include_relative la-flotte_parts.md singular="Moteur" part=model.motor plural="Moteurs" parts=model.motors %}

{% include_relative la-flotte_parts.md singular="Hélice" part=model.propeller plural="Hélices" parts=model.propellers %}

{% include_relative la-flotte_parts.md singular="Servo" part=model.servo plural="Servos" parts=model.servos %}

{{ model.content }}
</div>
{% assign index = forloop.index | modulo: 2 %}
{% if index == 0 %}<div class="clearfix hidden-lg-up"></div>{% endif %}
{% assign index = forloop.index | modulo: 3 %}
{% if index == 0 %}<div class="clearfix hidden-md-down"></div>{% endif %}
{% endfor %}
</div>

{% include links_by_title.md %}
