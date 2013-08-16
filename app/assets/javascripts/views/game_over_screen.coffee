class GameOverScreen extends Backbone.View

  constructor: ->
    super
    @on 'any button pressed', ->
      Game.goto "NameInput"