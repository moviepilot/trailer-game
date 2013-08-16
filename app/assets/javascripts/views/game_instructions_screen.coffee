class @GameInstructionsScreen extends Backbone.View

  events:
    'click': 'goOn'

  constructor: ->
    super

  render: ->

    @$el.html '
      <img src="assets/controller2.png" />
    '
    setTimeout (=> @goOn()), 5000

  goOn: ->
    gameView.goto(new InitialCountdownScreen)
