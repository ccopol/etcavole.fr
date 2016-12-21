{% for link in include.category.links %}
- [{{ link.title }}]({{ link.url }}){% if link.description %}&nbsp;: {{ link.description }}{% endif %}{% endfor %}

{% for category in include.category.categories %}
##{% for i in (1..include.level) %}#{% endfor %} {{ category.name }}
{% assign level_p_1 = level | plus: 1 %}
{% include_relative links_collection_category.md level=level_p_1 category=category %}
{% endfor %}
