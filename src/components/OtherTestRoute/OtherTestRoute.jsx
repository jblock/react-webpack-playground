var React = require('react');

var Router = require('react-router')
var RouteHandler = Router.RouteHandler;

var OtherTestRoute = React.createClass({

  render: function() {
    return (
      <div>
        <h3>Single Nest</h3>
        <RouteHandler />
      </div>
    );
  }

});

module.exports = OtherTestRoute;