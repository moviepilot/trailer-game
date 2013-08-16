class @GameOverScreen extends Backbone.View

  constructor: ->
    super
    @on 'any button pressed', ->
      gameView.goto new NameInputScreen

  render: ->
    super
    @$el.text('Game over!')