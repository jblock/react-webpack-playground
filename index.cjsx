require('zurb-foundation-5/scss/foundation.scss')
require('flux-instance')

React = require('react')
router = require('router')

document.addEventListener 'DOMContentLoaded', ->
  router.run (Handler, state) ->
    React.render <Handler/>, document.body
