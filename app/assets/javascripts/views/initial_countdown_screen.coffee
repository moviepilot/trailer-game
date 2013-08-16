class @InitialCountdownScreen extends Backbone.View

  constructor: ->
    super
    setTimeout (-> gameView.goto(new TrailerWatchScreen)), 5000

  render: ->
    super
    @$el.html('<h2>Initial countdown goes here…</h2>')
