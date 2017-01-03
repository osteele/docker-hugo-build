# docker-hugo-build

A Docker image for building [Hugo](https://gohugo.io) web sites on [Wercker](http://www.wercker.com).

This image is compatible with the wercker [hugo-build](https://github.com/ArjenSchwarz/wercker-step-hugo-build) step.

## Build

    docker build -t osteele/hugo-build .
    docker push osteele/hugo-build

## Publish

    git push origin

## Credits

Based on:

* [publysher/docker-hugo](https://hub.docker.com/r/publysher/hugo/)
* [SamuelDebruyn/docker-hugo-build](https://hub.docker.com/r/samueldebruyn/hugo-build/)
