---
title: Mes batteries
---
{% for battery in site.data.batteries %}
## {{ battery[0] }}
{% for date in battery[1] %}
- {{ date[0] }}&nbsp;: {{ date[1] | join: ", " }}{% endfor %}
{% endfor %}
