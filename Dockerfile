FROM debian:stable
MAINTAINER Oliver Steele <steele@osteele.com>

ENV HUGO_VERSION 0.18.1

RUN apt-get -qq update && apt-get install -y --no-install-recommends apt-utils

# Enable retrieving git sources.
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install git ssh-client ca-certificates

# wercker-step-hugo-build dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install curl golang git mercurial

# Hugo might use these
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install python-pygments

# Hugo itself
ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}-64bit.deb /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb && rm /tmp/hugo.deb

# Do this last, so it can cache the lines above.
RUN update-ca-certificates

# Clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
