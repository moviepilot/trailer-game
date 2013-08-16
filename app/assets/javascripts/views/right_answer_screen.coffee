class @RightAnswerScreen extends AnswerFeedbackScreen

  render: ->
    super
    @$el.text('The answer was right!')