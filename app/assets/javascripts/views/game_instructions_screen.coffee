class @GameInstructionsScreen extends Backbone.View

  events:
    'click': 'goOn'

  constructor: ->
    super

  render: ->
    super
    @$el.text('Game instructions go here')
    setTimeout (=> @goOn()), 5000

  goOn: ->
    gameView.goto(new InitialCountdownScreen)