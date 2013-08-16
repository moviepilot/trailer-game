class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

    @categories = new Categories()
    @categories.fetch().then
    
    @render()

  render: ->
    @$el.append('Name Input Screen')

  renderCategories: ->
