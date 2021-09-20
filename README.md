# docker tools

## docker-container-prune-dangling

Remove stopped containers with dangling (untagged) ancestor images.

Ideally this would be a built-in. Something like:

```sh
docker container prune --filter=ancestor=dangling
```

## docker-system-cleanup

Cleanup dangling docker containers, images, volumes, and networks

I use this in place of `docker system prune` because I don't want to remove all stopped containers I only want to remove
stopped containers that have dangling ancestors

## docker-image-children

Helps figure out docker image parent child relationships.

## docker-scp

Simply transfer a docker image from one host to another via ssh. Uses `pv` for a progress bar.
