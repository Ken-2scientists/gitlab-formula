{% from "gitlab/map.jinja" import gitlab with context %}
gitlab-deps:
  pkg.installed:
    - names: {{ gitlab.packages }}
    {% if grains['os_family'] == 'RedHat' %}
    - require:
      - pkgrepo: PUIAS_6_computational
    {% endif %}

#{% if salt['pillar.get']('gitlab:use_rvm',False) %}
rvm-deps:
  pkg.installed:
    - names: {{ gitlab.rvmpackages }}
#{% endif %}
