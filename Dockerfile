FROM library/node:4.4.3
MAINTAINER Jujhar Singh <jujhar+docker@jujhar.com>

# Install apidoc
RUN npm install -g apidoc

VOLUME ["/app", "/output", "/projDir"]

# Define working directory, where you should map your project to
WORKDIR /app

CMD ["/usr/local/bin/apidoc", "-i /projDir", "-o /output", "-t /app/template"]

