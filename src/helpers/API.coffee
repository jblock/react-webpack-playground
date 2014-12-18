# TODO: Support aborting requests

request = require('superagent')
{Promise} = require('es6-promise')

TIMEOUT = 10000

promisePlugin = (request) ->
  promise = new Promise (resolve, reject) ->
    request.on 'response', resolve
    request.on 'error', reject
  request.then = (onFulfilled, onRejected) ->
    promise.then onFulfilled, onRejected

makeRequest = (type, url, data, query) ->
  request(type, url)
    .query(query)
    .send(data)
    .withCredentials()
    .use(promisePlugin)
    .timeout(TIMEOUT)
    .end()

API =
  get: (url, data = {}, query = {}) ->
    makeRequest 'GET', url, data, query

  post: (url, data = {}, query = {}) ->
    makeRequest 'POST', url, data, query

  put: (url, data = {}, query = {}) ->
    makeRequest 'PUT', url, data, query

  patch: (url, data = {}, query = {}) ->
    makeRequest 'PATCH', url, data, query

  delete: (url, data = {}, query = {}) ->
    makeRequest 'DELETE', url, data, query

module.exports = API
