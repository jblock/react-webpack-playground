React = require('react')

Router = require('react-router')
{DefaultRoute, Route} = Router

App = require('components/App/App')
TestRoute = require('components/TestRoute/TestRoute')
OtherTestRoute = require('components/OtherTestRoute/OtherTestRoute')

routes = (
  <Route handler={App} path="/">
    <Route name="single-nest" handler={OtherTestRoute}>
      <Route name="double-nest" handler={TestRoute} />
    </Route>
  </Route>
)


router = Router.create({
  routes: routes,
  location: Router.HistoryLocation
})

module.exports = router;