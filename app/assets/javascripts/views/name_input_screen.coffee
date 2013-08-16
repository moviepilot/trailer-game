class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

  render: ->
    @$el.append('Name Input Screen')