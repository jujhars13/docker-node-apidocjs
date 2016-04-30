FROM library/node:4.4.3
MAINTAINER Jujhar Singh <jujhar+docker@jujhar.com>

# Install apidoc
RUN npm install -g apidoc


VOLUME ["/input","/output"]

# Define working directory, where you should map your project to
WORKDIR /input
#the name of the project you want to build
ENV $project

# Define default command.
CMD ["apidoc","-i", "/input/$project", "-o /output"]
