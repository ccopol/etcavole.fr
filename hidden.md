---
---
<dl class="row">
{% for appendix in site.appendixes %}
{% if appendix.hidden %}
<dt class="col-sm-3">[{{ appendix.title }}]({{ appendix.url }})</dt>
<dd class="col-sm-9">{{ appendix.excerpt }}</dd>
{% endif %}
{% endfor %}
</dl>

{% include links_by_title.md %}
