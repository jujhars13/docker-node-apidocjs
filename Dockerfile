FROM library/node:4.4.3
MAINTAINER Jujhar Singh <jujhar+docker@jujhar.com>

# Install apidoc
RUN npm install -g apidoc

# Define working directory, where you should map your project to
WORKDIR /output

VOLUME ["/input","/output"]

# Define default command.
CMD ["apidoc","-i", "/input/", "-o /output"]
