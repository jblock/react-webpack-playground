var React = require('react');

var TestRoute = React.createClass({

  render: function() {
    return (
      <div>
        <h5>Double Nest</h5>
        <form>
          <label>Something
            <input type="text" />
          </label>
        </form>
      </div>
    );
  }

});

module.exports = TestRoute;