class @RightAnswerScreen extends AnswerFeedbackScreen

  render: ->
    super
    @$el.html('<h2>The answer was right!</h2>')
