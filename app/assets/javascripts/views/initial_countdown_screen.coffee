class @InitialCountdownScreen extends Backbone.View

  constructor: ->
    super
    setTimeout (-> gameView.goto(new TrailerWatchScreen)), 5000

  render: ->
    super
    @$el.text('Initial countdown goes here…')