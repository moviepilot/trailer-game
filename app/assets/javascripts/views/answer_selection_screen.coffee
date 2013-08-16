class AnswerSelectionScreen extends Backbone.View

  constructor: ->
    @setTimeout (-> gameView.goto(new TimeoutScreen)), 20000
    @on 'selected a movie', (movie) ->
      if Game.currentQuestion.correctMovie == movie
        gameView.goto new RightAnswerScreen
      else
        gameView.goto new WrongAnswerScreen