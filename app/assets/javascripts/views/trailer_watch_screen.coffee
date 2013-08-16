class TrailerWatchScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> gameView.goto(new TimeoutScreen)), 20000
    @on 'somebody pressed the big button', (player) ->
      Game.lastActivePlayer = player
      gameView.goto new AnswerSelectionScreen