require('zurb-foundation-5/scss/foundation.scss')

var React = require('react');
var router = require('router');

document.addEventListener('DOMContentLoaded', function() {
  router.run(function (Handler, state) {
    React.render(<Handler/>, document.body);
  });
});