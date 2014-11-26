var React = require('react');
var router = require('router');

document.addEventListener('DOMContentLoaded', function() {
  router.run(function (Handler, state) {
    React.render(<Handler/>, document.body);
  });
});