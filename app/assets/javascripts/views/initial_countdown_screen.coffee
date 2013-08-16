#= require 'trailer_watch_screen'

class InitialCountdownScreen extends Backbone.View
  constructor: ->
    super
    @setTimeout (-> Game.goto(new TrailerWatchScreen)), 3000