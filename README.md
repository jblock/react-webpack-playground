# React/Webpack/Flux Playground

This repo is a WIP application scaffolding mechanism using all these above tools, and will be used by me to learn how to make this stuff work together in a scalable way.

## How does I make the jabbascripts happen?
```
npm install
script/dev
```
Then navigate to http://localhost:8090 (or alias a local route to there). Port 8080 is reserved for the livereload server.

### TODO
- [ ] Robust API module that can abort requests as needed
- [ ] Robust API module that can intelligently dispatch messages about error'd out requests
- [ ] Create examples of using `waitFor` and all the assorted goodies afforded by mcfly and flux
- [ ] Enhance development script to allow building to a static folder (for those who develop with local nginx proxies)
- [ ] Investigate punting webpack-dev-server in lieu of livereload (or something less buggy)
- [ ] Fix webpack bugs when files are deleted/renamed and the watcher goes berserk and strikes an infinite loop
