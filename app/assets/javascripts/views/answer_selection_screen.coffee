#= require './timeout_screen'
class AnswerSelectionScreen extends Backbone.View

  constructor: ->
    @setTimeout (-> gameView.goto(new TimeoutScreen)), 20000
    @on 'selected a movie', (movie) ->
      if Game.currentQuestion.correctMovie == movie
        Game.goto 'RightAnswer'
      else
        Game.goto 'WrongAnswer'