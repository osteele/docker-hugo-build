# docker-hugo-build

A Docker image for building [Hugo](https://gohugo.io) web sites on [Wercker](http://www.wercker.com).

[![docker](http://dockeri.co/image/osteele/hugo-build "docker")](https://registry.hub.docker.com/u/osteele/hugo-build/)

This image is compatible with the wercker [hugo-build](https://github.com/ArjenSchwarz/wercker-step-hugo-build) step.

## Build

    docker build -t osteele/hugo-build .

## Publish

    docker build -t osteele/hugo-build .
    docker push osteele/hugo-build

or:

    git push origin

## Credits

Based on:

* [publysher/docker-hugo](https://hub.docker.com/r/publysher/hugo/)
* [SamuelDebruyn/docker-hugo-build](https://hub.docker.com/r/samueldebruyn/hugo-build/)
