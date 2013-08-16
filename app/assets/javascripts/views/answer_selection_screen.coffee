class @AnswerSelectionScreen extends Backbone.View

  constructor: ->
    setTimeout (-> gameView.goto(new TimeoutScreen)), 20000

    Controllers.startPollingStates @checkIfPlayerSelectedSth

    @on 'selected a movie', (movie) ->
      if Game.currentQuestion.correctMovie == movie
        gameView.goto new RightAnswerScreen
      else
        gameView.goto new WrongAnswerScreen

  render: ->
    super
    @$el.append '<h2>Answer selection goes here</h2><ul></ul>'


  checkIfPlayerSelectedSth: (index, state) =>