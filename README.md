# docker-node-apidocjs
[apidocjs.com](http://apidocjs.com/) container used in builds of documentation
[Node.js 4.4.3 official](https://hub.docker.com/_/node/), and [apidocjs](http://apidocjs.com/)

We're using this image at [Voxpopme](https://www.voxpopme.com) to ensure we have consistent builds of our documentation.


[![dockeri.co](http://dockeri.co/image/jujhars13/docker-node-apidocjs)](https://hub.docker.com/r/jujhars13/docker-node-apidocjs/)


### Usage
simply mount your project folder to `/app` and run the apidoc command as you usually would.

```
docker run --rm \
-v ${PWD}:/app \
jujhars13/docker-node-apidocjs \
apidoc -i api.superwidgets.com/ -o html/public -t template
```