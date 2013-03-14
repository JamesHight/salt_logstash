include:
  - logstash.logstash

extend:
  logstash:
    file.managed:
      - name: /etc/logstash/conf.d/syslog.conf
      - source: salt://logstash/files/etc/logstash/conf.d/shipper.conf.jinja
      - user: root
      - group: adm
      - mode: 644
      - template: jinja
      - require:
        - pkg: logstash
