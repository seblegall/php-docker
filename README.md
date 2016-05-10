# php-docker

A basic docker container running PHP 7.0 or PHP 5.6.

This container should be usefull when running simple php script.

## Usage

To build the container (replace _<tag>_ by the new container tag e.g. : 5.6):

```sh
docker build -t seblegall/php:<tag> <php_version>/
```

To push the container on hub.docker.com

```sh
docker push seblegall/php:<tag>
```
