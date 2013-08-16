class @InitialCountdownScreen extends Backbone.View

  constructor: ->
    super

    categoryId = gameView.gameState.categoryId

    trailers = gameView.gameState.trailers = new Trailers()
    trailers.categoryId = categoryId
    trailers.fetch().then -> gameView.goto(new TrailerWatchScreen)

  render: ->
    super
    @$el.html('<h2>Loading…</h2>')
