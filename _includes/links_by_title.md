{% for link in site.data.links %}
[{{ link.title }}]: {{ link.url }}
{% endfor %}
