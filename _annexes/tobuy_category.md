{% for item in include.category.items %}
- {{ item }}{% endfor %}

{% for category in include.category.categories %}
{% for i in (1..include.level) %}#{% endfor %} {{ category.name }}
{% assign level_p_1 = include.level | plus: 1 %}
{% include_relative tobuy_category.md level=level_p_1 category=category %}
{% endfor %}
