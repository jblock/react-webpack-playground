React = require('react')

Router = require('react-router')
{DefaultRoute, Route} = Router

App = require('components/App/App')
Dashboard = require('components/Dashboard/Dashboard')

# Check out https://github.com/rackt/react-router for docs on the router

routes = (
  <Route handler={App} path="/">
    <DefaultRoute handler={Dashboard} name="home" />
  </Route>
)

router = Router.create
  routes: routes
  location: Router.HistoryLocation

module.exports = router;
