# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "freeradius/map.jinja" import freeradius with context %}

# freeradius-config:
#   file.managed:
#     - name: {{ freeradius.config }}
#     - source: salt://freeradius/files/example.tmpl
#     - mode: 644
#     - user: root
#     - group: root
