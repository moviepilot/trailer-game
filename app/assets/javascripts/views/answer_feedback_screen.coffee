class @AnswerFeedbackScreen extends Backbone.View

  constructor: ->
    super
    if Game.questionIndex == 10
      setTimeout (-> gameView.goto(new GameOverScreen)), 5000
    else
      setTimeout (-> gameView.goto(new TrailerWatchScreen)), 5000