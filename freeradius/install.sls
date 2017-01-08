# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "freeradius/map.jinja" import freeradius with context %}

freeradius-pkg:
  pkg.installed:
    - name: {{ freeradius.pkg }}

{% if freeradius.install.kerberos == True %}
freeradius-pkg-kerberos:
  pkg.installed:
    - name: {{ freeradius.pkg_krb }}
{% endif %}

{% if freeradius.install.ldap == True %}
freeradius-pkg-ldap:
  pkg.installed:
    - name: {{ freeradius.pkg_ldap }}
{% endif %}

{% if freeradius.install.pgsql == True %}
freeradius-pkg-pgsql:
  pkg.installed:
    - name: {{ freeradius.pkg_postgres }}
{% endif %}
