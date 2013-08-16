#= require 'timeout_screen'

class TrailerWatchScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> gameView.goto(new TimeoutScreen)), 20000
    @on 'somebody pressed the big button', (player) ->
      Game.lastActivePlayer = player
      Game.goto 'AnswerSelection'