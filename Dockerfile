FROM circleci/openjdk

WORKDIR /home/circleci

RUN curl -o SenchaCmd-7.1.0.15-linux-amd64.sh.zip -sSL http://cdn.sencha.com/cmd/7.1.0.15/no-jre/SenchaCmd-7.1.0.15-linux-amd64.sh.zip
RUN unzip -q SenchaCmd-7.1.0.15-linux-amd64.sh.zip
RUN chmod +x SenchaCmd-7.1.0.15-linux-amd64.sh
RUN ./SenchaCmd-7.1.0.15-linux-amd64.sh -q
RUN rm SenchaCmd-7.1.0.15-linux-amd64.sh.zip SenchaCmd-7.1.0.15-linux-amd64.sh
RUN export PATH=/home/circleci/bin/Sencha/Cmd/7.1.0.15

ENTRYPOINT ["/bin/bash"]
