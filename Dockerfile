FROM qnib/alplain-init

ENV DATABASE_DRIVER=sqlite3 \
    DATABASE_CONFIG=/var/lib/drone/drone.sqlite \
    REMOTE_DRIVER=github
ADD opt/qnib/entry/10-docker-secrets.env /opt/qnib/entry/
ADD opt/qnib/drone/bin/start.sh /opt/qnib/drone/bin/
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf
RUN wget -qO /usr/bin/drone https://github.com/ChristianKniep/drone/releases/download/v0.4.2/drone_v0.4.2_MuslLinux \
 && chmod +x /usr/bin/drone
CMD ["/opt/qnib/drone/bin/start.sh"]
