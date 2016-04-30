# docker-node-apidocjs
apidocjs.com container used in builds of documentation
Node.js 4.4.3 w/ NPM, and apidocjs 

We're using this image at [Voxpopme](https://www.voxpopme.com) to ensure we have consistent builds of our documentation.


[![dockeri.co](http://dockeri.co/image/jujhars13/docker-node-apidocjs)](https://hub.docker.com/r/jujhars13/docker-node-apidocjs/)


### Usage
Your project source directory should be mapped to the `/input` directory:
Your HTML generated output directory should be mapped to the `/output` directory:

```
docker run -it --rm \
-v ${PWD}/api:/input -v ${PWD}/html:/output \
jujhars13/docker-node-apidocjs
```