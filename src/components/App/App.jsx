var React = require('react')

var Router = require('react-router')
var RouteHandler = Router.RouteHandler;
var Link = Router.Link;

var TestRoute = require('components/TestRoute/TestRoute')

var App = React.createClass({

  render: function() {
    return (
      <main>
        <h1>Main Page</h1>
        <div><Link to="thing">first thing</Link></div>
        <div><Link to="test">Something</Link></div>
        <RouteHandler />
      </main>
    )
  }

})

module.exports = App
