class @GameInstructionsScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new InitialCountdownScreen)

  render: ->
    @$el.html '
      <p>Press the big button on your remote if you know which movie the shown trailer belongs to.</p>
      <p>Then press the correct letter.</p>
      <img src="assets/buzz.jpg" />
    '

    setTimeout (-> gameView.goto(new InitialCountdownScreen)), 5000
