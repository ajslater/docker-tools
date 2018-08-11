# docker-cleanup
Cleanup dangling docker containers, images, networks and volumes

Less destructive than `docker system prune`.

1. Removes containers that were created from images that are dangling.
2. Removes dangling images.
3. Prunes networks that are unused by containers
4. Prunes volumes thate are unused by containers
