class @TrailerWatchScreen extends Backbone.View
  constructor: ->
    super
    setTimeout (-> gameView.goto(new TimeoutScreen)), 20000
    @on 'somebody pressed the big button', (player) ->
      Game.lastActivePlayer = player
      gameView.goto new AnswerSelectionScreen

  render: ->
    @$el.append "
      <div class='overlay'></div>
      <iframe id='ytplayer' type='text/html' width='100%' height='100%'
      src='https://www.youtube.com/embed/M7lc1UVf-VE?autoplay=1&controls=0&modestbranding=1&rel=0&showinfo=0'
      frameborder='0' allowfullscreen>
    "
