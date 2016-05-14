# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "freeradius/map.jinja" import freeradius with context %}

freeradius-name:
  service.running:
    - name: {{ freeradius.service.name }}
    - enable: True
