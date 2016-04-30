# docker-node-apidocjs
apidocjs.com container used in builds of documentation
Node.js 4.4.3 w/ NPM, and apidocjs 

We're using this image at [Voxpopme](https://www.voxpopme.com) to ensure we have consistent builds of our documentation.


[![dockeri.co](http://dockeri.co/image/jujhars13/docker-node-apidocjs)](https://hub.docker.com/r/jujhars13/docker-node-apidocjs/)


### Usage
1. Your project root directory should be mapped to the `/input` directory
2. Define the source for your docs as an env variable `project=api.superwidgets.com` 
3. Your HTML generated output directory should be mapped to the `/output` directory

```
docker run -it --rm \
-v ${PWD}:/input -v \
-e project=api.superwidgets.com \
${PWD}/html:/output \
jujhars13/docker-node-apidocjs
```