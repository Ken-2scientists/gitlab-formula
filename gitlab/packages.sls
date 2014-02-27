{% from "gitlab/map.jinja" import gitlab with context %}

gitlab-deps:
  pkg.installed:
    - names: {{ gitlab.packages }}

{% if grains['os_family'] == 'RedHat' %}
gitlab-deps-repo:
  pkgrep: 
    - require:
      - pkgrepo: PUIAS_6_computational
{% endif %}

git:
  pkg:
    - latest
    {% if grains['os_family'] == 'RedHat' %}
    - provider: yumpkg
    {% endif %}

{% if salt['pillar.get']('gitlab:use_rvm', False) %}
rvm-deps:
  pkg.installed:
    - pkgs:
      - names: {{ gitlab.rvmpackages }} 
{% endif %}
