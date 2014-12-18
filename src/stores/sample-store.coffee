###
Example:

Flux = require('flux-instance')

_somethings = []

addSomething = (data) ->
  _somethings.push data

SomethingStore = Flux.createStore
  getSomethings: -> _somethings
, (payload) ->
  switch payload.actionType
    # We can have the actions store enumerated constants as well so we aren't string matching.
    # Facebook provides a simple tool called keyMirror, but we can also do something else:
    #
    # Constants = keyMirror
    #   ADD_SOMETHING: null
    #
    # Then you can export that alongside the actions and call
    #  SomethingActions.Constants.ADD_SOMETHING
    #
    # Or export it as a separate module (which would minify better)
    when 'ADD_SOMETHING'
      addSomething(payload.data)

  # Can move this to only happen in specific scenarios
  SomethingStore.emitChange()
