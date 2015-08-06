$ = require './variables'

module.exports =

  homeView:
    flex: 1
    flexDirection: 'column'
    justifyContent: 'space-around'
    alignItems: 'center'
    backgroundColor: $.darkGray

  homeWelcome:
    fontSize: 40
    color: $.red
    textAlign: 'center'

  homeButton:
    width: 250
    height: 70
    backgroundColor: $.red
    borderColor: $.black
    borderWidth: 2
    borderStyle: 'solid'
    borderRadius: 20
    justifyContent: 'space-around'
    alignItems: 'center'

  homeButtonText:
    fontSize: 40
    color: $.black
    textAlign: 'center'

  homePressedText:
    color: $.red
    fontSize: 20
    fontStyle: 'italic'

  homeSubText:
    color: $.black
    fontSize: 10
    fontStyle: 'italic'
    marginTop: 15