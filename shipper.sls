logstash:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/wolfnet/logstash/ubuntu precise main
    - dist: precise
    - file: /etc/apt/sources.list.d/logstash.list
    - keyid: 28B04E4A
    - keyserver: keyserver.ubuntu.com
  pkg.latest:
    - require:
      - pkgrepo: deb http://ppa.launchpad.net/wolfnet/logstash/ubuntu precise main
  user.present:
    - system: True
    - home: /srv/logstash
    - shell: /usr/sbin/nologin
    - password: '*'
  group.present:
    - system: True

#apply standard configs?
#restart shipper if configs change