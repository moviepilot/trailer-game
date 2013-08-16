class @GameInstructionsScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new InitialCountdownScreen)

  render: ->
    super
    @$el.text('Game instructions go here')
    setTimeout(-> gameView.goto(new InitialCountdownScreen)), 5000