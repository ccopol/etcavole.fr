{% if include.part %}{{ include.singular }}&nbsp;: {{ include.part }}
{% elsif include.parts %}{{ include.plural }}&nbsp;:
{% for part in include.parts %}
- {{ part.role }}&nbsp;: {% if part.count %}{{ part.count }} fois {% endif %}{{ part.model }}{% endfor %}
{% endif %}
