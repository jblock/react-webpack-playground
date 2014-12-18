# TODO: Support aborting requests

request = require('superagent')

TIMEOUT = 10000

API =
  request: (type, url, data, query) ->
    request(type, url)
      .query query
      .send data
      .use require('superagent-promise')
      .timeout TIMEOUT
      .end()

  get: (url, data = {}, query = {}) ->
    API.request 'GET', url, data, query

  post: (url, data = {}, query = {}) ->
    API.request 'POST', url, data, query

  put: (url, data = {}, query = {}) ->
    API.request 'PUT', url, data, query

  patch: (url, data = {}, query = {}) ->
    API.request 'PATCH', url, data, query

  delete: (url, data = {}, query = {}) ->
    API.request 'DELETE', url, data, query

module.exports = API
