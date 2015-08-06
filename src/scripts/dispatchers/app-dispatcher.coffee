# Application dispatcher
Dispatcher = require './dispatcher'
_ = require 'underscore'

AppDispatcher = _.extend({}, Dispatcher::,
  handleViewAction: (action) ->
    @dispatch
      source: "VIEW_ACTION"
      action: action

    return
  handleSaveAction: (action) ->
    @dispatch
      source: "SAVE_ACTION"
      action: action

    return
)
module.exports = AppDispatcher
