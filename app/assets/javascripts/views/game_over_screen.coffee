class GameOverScreen extends Backbone.View

  constructor: ->
    super
    @on 'any button pressed', ->
      gameView.goto new NameInputScreen