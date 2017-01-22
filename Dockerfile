FROM qnib/alplain-init

ENV DRONE_DATABASE_DRIVER=sqlite3 \
    DRONE_GITHUB=true \
    DRONE_OPEN=true
ADD opt/qnib/entry/10-docker-secrets.env /opt/qnib/entry/
ADD opt/qnib/drone/bin/start.sh /opt/qnib/drone/bin/
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf
RUN wget -qO /usr/bin/drone https://github.com/ChristianKniep/drone/releases/download/0.5.0-dev/drone_0.5.0-dev_MuslLinux \
 && chmod +x /usr/bin/drone
CMD ["/opt/qnib/drone/bin/start.sh"]
