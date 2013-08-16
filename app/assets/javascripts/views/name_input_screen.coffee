class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> Game.goto('GameInstructions')

  render: ->
    @$el.append('Name Input Screen')