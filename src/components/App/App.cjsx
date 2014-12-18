React = require('react')

Router = require('react-router')
{RouteHandler, Link} = Router

App = React.createClass

  render: ->
    return (
      <main>
        <nav className="top-bar" data-topbar role="navigation">
          <ul className="title-area">
            <li className="name">
              <h1><Link to="/">App Title</Link></h1>
            </li>
          </ul>
          <section className="top-bar-section">
            <ul className="left">
              <li><a href="#">Sample Link</a></li>
            </ul>
          </section>
        </nav>
        <RouteHandler />
      </main>
    )

module.exports = App
