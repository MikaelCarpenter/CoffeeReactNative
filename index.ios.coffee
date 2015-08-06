'use strict'

React = require 'react-native'

{
  AppRegistry
} = React

App = require './dist/app'

# When you use this template, you should change the name of the folder
# to be descriptive of your project. Then change 'CoffeeReactNative'
# to match the name of the folder.
AppRegistry.registerComponent('CoffeeReactNative', () -> App)