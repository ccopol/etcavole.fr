---
---
<dl class="row">
{% for annexe in site.annexes %}
{% if annexe.hidden %}
<dt class="col-sm-3">[{{ annexe.title }}]({{ annexe.url }})</dt>
<dd class="col-sm-9">{{ annexe.excerpt }}</dd>
{% endif %}
{% endfor %}
</dl>

{% include links_by_title.md %}
