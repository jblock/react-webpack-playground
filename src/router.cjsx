React = require('react')

Router = require('react-router')
{DefaultRoute, Route} = Router

App = require('components/App/App')
Dashboard = require('components/Dashboard/Dashboard')

routes = (
  <Route handler={App} path="/">
    <DefaultRoute handler={Dashboard} name="home" />
  </Route>
)

router = Router.create
  routes: routes
  location: Router.HistoryLocation

module.exports = router;
