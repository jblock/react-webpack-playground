React = require('react')

Router = require('react-router')
{DefaultRoute, Route} = Router

App = require('components/App/App')
TestRoute = require('components/TestRoute/TestRoute')
OtherTestRoute = require('components/OtherTestRoute/OtherTestRoute')

routes = (
  <Route handler={App} path="/">
    <Route
      name="test"
      handler={OtherTestRoute}>
      <Route
        name="thing"
        handler={TestRoute} />
    </Route>
  </Route>
)


router = Router.create({
  routes: routes,
  location: Router.HistoryLocation
})

module.exports = router;