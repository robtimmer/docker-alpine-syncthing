robtimmer/syncthing
===================

[Syncthing](http://syncthing.net/) Docker image



    docker run -d \
        --name syncthing \
        --restart always \
        -p 8384:8384 -p 22000:22000 -p 21027:21027/udp \
        -v /path/to/config/directory:/data/config \
        robtimmer/syncthing
