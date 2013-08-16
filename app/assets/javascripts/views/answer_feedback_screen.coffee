class @AnswerFeedbackScreen extends Backbone.View

  constructor: ->
    super
    if Game.questionIndex == 10
      @setTimeout (-> Game.goto('GameOver')), 5000
    else
      @setTimeout (-> Game.goto('TrailerWatchScreen')), 5000