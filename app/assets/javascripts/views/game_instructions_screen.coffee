class GameInstructionsScreen extends Backbone.View
  constructor: ->
    super
    @on "gamepadButtonPressed", -> Game.goto('InitialCountdown')