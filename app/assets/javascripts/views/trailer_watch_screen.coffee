class @TrailerWatchScreen extends Backbone.View

  timeoutMilliseconds: 20000

  constructor: ->
    super
    gameView.gameState.currentTrailer = gameView.gameState.trailers.at gameView.gameState.currentTrailerIndex
    setTimeout (-> gameView.goto(new TimeoutScreen)), @timeoutMilliseconds
    @on 'somebody pressed the big button', (player) ->
      Controllers.stopPollingStates = true
      gameView.gameState.lastActivePlayer = player
      gameView.goto new AnswerSelectionScreen

    Controllers.startPollingStates @checkIfSomeonePressed

  render: ->
    youtubeId = gameView.gameState.currentTrailer.attributes.youtube_link.slice(-11)
    start_time = gameView.gameState.currentTrailer.attributes.start_time
    super
    @$el.append "
      <div class='overlay'></div>
      <iframe id='ytplayer' type='text/html' width='100%' height='100%'
      src='https://www.youtube.com/embed/#{youtubeId}?autoplay=1&controls=0&modestbranding=1&rel=0&start=#{start_time}&showinfo=0'
      frameborder='0' allowfullscreen>
    "

  checkIfSomeonePressed: (index, state) =>
    player = gameView.gameState.players.get index
    return unless player

    pressed = state.buttons.indexOf(1) isnt -1

    if pressed
      @trigger 'somebody pressed the big button', player

    videoEl = $("<iframe id='ytplayer' type='text/html' width='100%' height='100%'
src='https://www.youtube.com/embed/M7lc1UVf-VE?autoplay=1&controls=0&modestbranding=1&rel=0&showinfo=0'
frameborder='0' allowfullscreen>")
    @$el.append(videoEl)

    countdownEl = $('<div class="countdown"></div>')
    @$el.append(countdownEl)
    countdownView = new CountdownView @timeoutMilliseconds,
      el: countdownEl
    countdownView.render()
    $('#logo').hide()

  remove: ->
    super
    $('#logo').show()
