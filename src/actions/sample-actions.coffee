###
# Example: Say these are actions related to the `Something` resource

API = require('helpers/API')

Flux = require('flux-instance')

resourceURL = (id) -> "/api/something/#{id}"

SomethingActions = Flux.createActions
  addSomething: (data) ->
   API.put(resourceURL(data.id), data)
    .then (response) ->
      # Parse the superagent response
      # actionType: 'ADD_SOMETHING'
      # data: response.body
    .catch (err) ->
      # Return an actiontype to indicate an error to the client
