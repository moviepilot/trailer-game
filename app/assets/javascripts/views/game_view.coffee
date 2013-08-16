class @GameView extends Backbone.View

  goto: (view) ->
    if @currentView
      @currentView.remove()

    el = $("<div class='current-state'></div>")
    el.appendTo(@$el)
    view.setElement(el)
    @currentView = view

    @currentView.render()

  constructor: ->
    super
    @goto(new NameInputScreen)
    @gameState =
      players: new Backbone.Collection()

  render: ->
    super
