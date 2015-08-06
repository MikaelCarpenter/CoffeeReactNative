React = require 'react-native'

styles = require '../../styles/home'
{
  View,
  Text,
  TouchableHighlight
} = React

module.exports = React.createClass

  displayName: 'Home'

  getInitialState: ->
    pressed: false

  _handlePress: ->
    @setState pressed: !@state.pressed

  render: ->
    <View style={styles.homeView}>
      <Text style={styles.homeWelcome}>
        Welcome to my React Native Template!
      </Text>
      <TouchableHighlight onPress={@_handlePress}>
        <View style={styles.homeButton}>
          <Text style={styles.homeButtonText}> Button </Text>
        </View>
      </TouchableHighlight>
      {if @state.pressed
        <Text style={styles.homePressedText}> Ooooh, you pressed me! </Text>
      }
      <Text style={styles.homeSubText}>
        Brought to you with CoffeeScript and Flux.
      </Text>
    </View>
