#=require 'initial_countdown_screen'

class GameInstructionsScreen extends Backbone.View
  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new InitialCountdownScreen)