FROM gliderlabs/herokuish
MAINTAINER Kamil Domański (kamil@domanski.co)

RUN apt-get update && \
    apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev usbutils && \
    rm -rf /var/lib/apt/lists/*

RUN herokuish buildpack install https://github.com/abhishekmunie/heroku-buildpack-nginx.git 6c8308b027380c0bbfb3eb76249a1270e80d6f92

RUN mkdir -p /etc/profile.d
COPY prep.sh /etc/profile.d/prep.sh
ADD buildapp.sh /bin/buildapp.sh
RUN chmod 755 /etc/profile.d/prep.sh /bin/buildapp.sh
