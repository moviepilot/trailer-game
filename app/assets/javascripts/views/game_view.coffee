class @GameView extends Backbone.View

  goto: (view) ->
    if @currentView
      @currentView.viewWillDisappear?()
      @currentView.$el.remove()

    view.setElement(@$('.current-state'))
    @currentView = view

    @currentView.render()
    @currentView.viewDidAppear?()

  constructor: ->
    super
    @goto(new NameInputScreen)
    @gameState = {}

  render: ->
    super
