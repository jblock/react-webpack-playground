# TODO: Support aborting requests

request = require('superagent')
{Promise} = require('es6-promise')

TIMEOUT = 10000

getPromiseEnd = (previousEnd) ->
  (success, failure) ->
    promise = new Promise (resolve, reject) =>
      previousEnd.call @, (error, res) ->
        if error or not res.ok
          reject error or res
        else
          resolve res
    promise = promise.then(success, failure) if success or failure
    promise

promisePlugin = (request) ->
  request.end = getPromiseEnd(request.end)
  request

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
