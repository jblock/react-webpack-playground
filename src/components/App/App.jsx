var React = require('react')

var Router = require('react-router')
var RouteHandler = Router.RouteHandler;
var Link = Router.Link;

var TestRoute = require('components/TestRoute/TestRoute')

var App = React.createClass({

  render: function() {
    return (
      <main>
        <nav className="top-bar" data-topbar role="navigation">
          <ul className="title-area">
            <li className="name">
              <h1><Link to="double-nest">Link</Link></h1>
            </li>
          </ul>
        </nav>
        <div><Link to="single-nest">Single Nesting</Link></div>
        <div><Link to="double-nest">Double Nesting</Link></div>
        <RouteHandler />
      </main>
    )
  }

})

module.exports = App
