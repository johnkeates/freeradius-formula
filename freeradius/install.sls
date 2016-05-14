# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "freeradius/map.jinja" import freeradius with context %}

freeradius-pkg:
  pkg.installed:
    - name: {{ freeradius.pkg }}
