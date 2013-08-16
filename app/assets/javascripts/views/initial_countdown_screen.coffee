class @InitialCountdownScreen extends Backbone.View

  timeoutMilliseconds: 5000

  render: ->
    super

    @$el.html '<img src="assets/controller2.png" />'

    categoryId = gameView.gameState.categoryId
    trailers = gameView.gameState.trailers = new Trailers()
    trailers.categoryId = categoryId
    trailers.fetch().then =>
      countdownEl = $('<div class="countdown"></div>')
      @$el.append(countdownEl)
      countdownView = new CountdownView @timeoutMilliseconds,
        el: countdownEl
      countdownView.render()

      gameView.gameState.currentTrailerIndex = 0
      setTimeout (-> gameView.goto(new TrailerWatchScreen)), @timeoutMilliseconds
