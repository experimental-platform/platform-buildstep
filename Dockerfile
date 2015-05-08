FROM progrium/buildstep:latest


ADD buildapp.sh /bin/buildapp.sh
RUN chmod 755 /bin/buildapp.sh