{% assign include_category = include.category | default: site.data.links %}

{% for link in include_category.links %}
[{{ link.title }}]: {{ link.url }}
{% endfor %}

{% for category in include_category.categories %}
{% include links_by_title.md category=category %}
{% endfor %}
