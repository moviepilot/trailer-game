class @WrongAnswerScreen extends AnswerFeedbackScreen

  render: ->
    super
    @$el.text('Now this was TOTALLY wrong. Of course, the right answer is: …')