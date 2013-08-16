class @GameInstructionsScreen extends Backbone.View

  events:
    'click': 'goOn'

  constructor: ->
    super

  render: ->

    setTimeout (-> gameView.goto(new InitialCountdownScreen)), 5000

    @$el.html '
      <img src="assets/controller2.png" />
    '
    setTimeout (=> @goOn()), 5000

  goOn: ->
    gameView.goto(new InitialCountdownScreen)
