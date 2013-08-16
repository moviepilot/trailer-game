class @GameInstructionsScreen extends Backbone.View

  events:
    'click': 'goOn'

  constructor: ->
    super

  render: ->

    setTimeout (-> gameView.goto(new InitialCountdownScreen)), 5000

    @$el.html '
      <p>Press the big button on your remote if you know which movie the shown trailer belongs to.</p>
      <p>Then press the correct letter.</p>
      <img src="assets/controller.png" />
    '
    #@$el.html('<h2>Game instructions go here</h2>')
    setTimeout (=> @goOn()), 5000

  goOn: ->
    gameView.goto(new InitialCountdownScreen)
