React = require('react')

Router = require('react-router')
{RouteHandler, Link} = Router

require('helpers/API')

# cx = require('react/addons').classSet
# klassNames = cx
#   'row': true
#   'is-error': SomethingStore.isValid(this.props.data) # or checking by resource ID
# component = <Something className={klassNames} />
#
# On production build, we can dedupe the webpack output to allow
# 'react' and 'react/addons' to be used alongside one another

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
