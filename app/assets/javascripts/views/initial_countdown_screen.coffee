class InitialCountdownScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> gameView.goto(new TrailerWatchScreen)), 3000