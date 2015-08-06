React = require 'react-native'

Home = require './scripts/components/home'

{
  Navigator
} = React

_initialRoute =
  title: 'Home'
  index: 0

App = React.createClass
  render: ->
    <Navigator
      initialRoute={_initialRoute}
      renderScene={ (route, navigator) =>
        <Home
          title={route.title}
          onForward={ =>
            nextIndex = route.index + 1;
            navigator.push
              name: 'Scene ' + nextIndex
              index: nextIndex
          }
          onBack={ =>
            if route.index > 0
              navigator.pop()
          }
        />
      }
    />

module.exports = App