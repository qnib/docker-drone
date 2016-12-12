# docker-drone
DroneCI image


```
$ echo "https://github.com?client_id=CLI_ID&client_secret=CLI_SEC" | docker secret create remote_config
$ docker service create --name drone-server --secret remote_config \
                        --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
                        --mount type=bind,source=/var/lib/drone/,target=/var/lib/drone/ \
                        --port target=8000,published=8000,mode=ingress qnib/drone
$
```
