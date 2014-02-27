{% if grains['os_family'] == 'Debian' %}
git-repo:
  pkgrepo.managed:
    - ppa: git-core/ppa
    - require_in:
      - pkg.installed: git
{% endif %}

git:
  pkg.installed
