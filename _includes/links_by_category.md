{% assign include_category = include.category | default: site.data.links %}

{% for link in include_category.links %}{% if link.description %}
- [{{ link.title }}]({{ link.url }})&nbsp;: {{ link.description }}{% endif %}{% endfor %}

{% for category in include_category.categories %}
{% assign include_level = include.level | default: 0 %}
##{% for i in (1..include_level) %}#{% endfor %} {{ include_level }} {{ category.name }}
{% assign level_p_1 = include_level | plus: 1 %}
{% include links_by_category.md level=level_p_1 category=category %}
{% endfor %}
