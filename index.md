---
title: Bienvenue
---

Bonjour, je suis Vincent Jacques, et sur *Et ça vole&nbsp;?!* je vous parle d'aéromodélisme, de drones, de fusées à eau, d'avions en papier...
De tout ce qui vole sans personne à bord&nbsp;!
Je mets l'accent sur les aspects techniques, pour vous permettre de reproduire chez vous ce que vous voyez ici.

Le blog
=======

<dl class="row">
{% for post in site.posts %}
<dt class="col-md-3">{{ post.date | date_to_string }}</dt>
<dd class="col-md-9">
**[{{ post.title }}]({{ post.url }})**
{{ post.excerpt }}
</dd>
{% endfor %}
</dl>

Les annexes
===========

<dl class="row">
{% for annexe in site.annexes %}
{% unless annexe.hidden %}
<dt class="col-sm-3">[{{ annexe.title }}]({{ annexe.url }})</dt>
<dd class="col-sm-9">{{ annexe.excerpt }}</dd>
{% endunless %}
{% endfor %}
</dl>

{% include links_by_title.md %}
