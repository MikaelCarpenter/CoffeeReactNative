# Boilerplate dispatcher from Flux
Promise = require('es6-promise').Promise
_ = require 'underscore'

_callbacks = []
_promises = []

###*
Add a promise to the queue of callback invocation promises.
@param {function} callback The Store's registered callback.
@param {object} payload The data from the Action.
###
_addPromise = (callback, payload) ->
  _promises.push new Promise((resolve, reject) ->
    if callback(payload)
      resolve payload
    else
      reject new Error('Dispatcher callback unsuccessful')
    return
  )
  return

###*
Empty the queue of callback invocation promises.
###
_clearPromises = ->
  _promises = []
  return

Dispatcher = ->

Dispatcher:: = _.extend({}, Dispatcher::,

  ###*
  Register a Store's callback so that it may be invoked by an action.
  @param {function} callback The callback to be registered.
  @return {number} The index of the callback within the _callbacks array.
  ###
  register: (callback) ->
    _callbacks.push callback
    _callbacks.length - 1 # index


  ###*
  dispatch
  @param  {object} payload The data from the action.
  ###
  dispatch: (payload) ->
    _callbacks.forEach (callback) ->
      _addPromise callback, payload
      return

    Promise.all(_promises).then _clearPromises
    return
)
module.exports = Dispatcher