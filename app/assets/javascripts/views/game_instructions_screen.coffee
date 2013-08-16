class @GameInstructionsScreen extends Backbone.View

  events:
    'click': 'goOn'

  constructor: ->
    super

  render: ->
    @$el.html '
      <p>Press the big button on your remote if you know which movie the shown trailer belongs to.</p>
      <p>Then press the correct letter.</p>
      <img src="assets/controller.png" />
    '

    setTimeout (=> @goOn()), 5000

  goOn: ->
    gameView.goto(new InitialCountdownScreen)
