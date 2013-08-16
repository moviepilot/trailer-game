class InitialCountdownScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> Game.goto('TrailerWatchScreen')), 3000