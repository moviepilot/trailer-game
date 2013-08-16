class TrailerWatchScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> Game.goto('Timeout')), 20000
    @on 'somebody pressed the big button', (player) ->
      Game.lastActivePlayer = player
      Game.goto 'AnswerSelection'