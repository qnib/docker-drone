# docker-drone
DroneCI image


```
$ echo "CLI_ID" | docker secret create DRONE_GITHUB_CLIENT -
$ echo "CLI_SEC" | docker secret create DRONE_GITHUB_SECRET -
$ docker service create --name drone-server --secret DRONE_GITHUB_CLIENT --secret DRONE_GITHUB_SECRET \
                        --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
                        --mount type=bind,source=/var/lib/drone/,target=/var/lib/drone/ \
                        --publish target=8000,published=8000,mode=ingress qnib/drone
$
```
