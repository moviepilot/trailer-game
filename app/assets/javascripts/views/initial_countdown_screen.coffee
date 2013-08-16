class @InitialCountdownScreen extends Backbone.View

  timeoutMilliseconds: 5000

  constructor: ->
    super

    categoryId = gameView.gameState.categoryId

    trailers = gameView.gameState.trailers = new Trailers()
    trailers.categoryId = categoryId
    trailers.fetch().then ->
      gameView.gameState.currentTrailerIndex = 0
      gameView.goto(new TrailerWatchScreen)

  render: ->
    super
    @$el.html('<h2>Loading…</h2>')
    setTimeout (-> gameView.goto(new TrailerWatchScreen)), @timeoutMilliseconds

  render: ->
    super
    countdownEl = $('<div></div>')
    @$el.append(countdownEl)
    countdownView = new CountdownView @timeoutMilliseconds,
      el: countdownEl
    countdownView.render()
