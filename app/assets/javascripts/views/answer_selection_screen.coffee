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
    player = gameView.gameState.lastActivePlayer
    @$el.append "<h2>Answer Player#{player.id}</h2>"

    trailer = gameView.gameState.currentTrailer

    ul = "<ul>"
    ul += "<li>#{trailer.attributes.answer0}</li>"
    ul += "<li>#{trailer.attributes.answer1}</li>"
    ul += "<li>#{trailer.attributes.answer2}</li>"
    ul += "<li>#{trailer.attributes.answer3}</li>"
    ul += "</ul>"

    @$el.append ul

  checkIfPlayerSelectedSth: (index, state) =>
    player = gameView.gameState.players.get index
    return unless player

    return if gameView.gameState.lastActivePlayer.id isnt index

    pressed = state.buttons.indexOf(1) isnt -1

    return if not pressed

    debugger