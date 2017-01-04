---
title: Todo
hidden: true
---
Todo list.

{% for plane in site.fleat %}
{% if plane.todo %}
## {{ plane.name }}
{% for todo in plane.todo %}
- {{ todo }}{% endfor %}
{% endif %}
{% endfor %}
