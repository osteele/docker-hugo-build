FROM debian
MAINTAINER Oliver Steele <steele@osteele.com>

ENV HUGO_VERSION 0.18.1

RUN apt-get -qq update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y --no-install-recommends install curl git ssh-client python-pygments

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}-64bit.deb /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb && rm /tmp/hugo.deb

# RUN rm -rf /var/lib/apt/lists/*
