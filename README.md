# mdzk-docker

This is a *very* simple docker container for the
[mdzk](https://github.com/mdzk-rs/mdzk) zettelkasten publishing framework.
Created because reinstalling using docker for every automated build was too
costly.  You can find it on
[DockerHub](https://hub.docker.com/repository/docker/fr1nge/mdzk/).
To serve a zettelkasten on port 8080, the command is:

```
docker run -p 3000:8080 -v ./zettelkasten:/wiki fr1nge/mdzk:latest
```
