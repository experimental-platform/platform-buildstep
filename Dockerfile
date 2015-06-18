FROM progrium/buildstep:latest

RUN apt-get update && \
    apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev && \
    rm -rf /var/lib/apt/lists/*


ADD buildapp.sh /bin/buildapp.sh
RUN chmod 755 /bin/buildapp.sh