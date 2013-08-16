class @GameView extends Backbone.View

  goto: (view) ->
    if @currentView
      @currentView.viewWillDisappear?()
      @currentView.$el.remove()

    @currentView = view

    @currentView.render()
    @currentView.viewDidAppear?()


  constructor: ->
    super
    @goto(new NameInputScreen)
    @gameState = {}


    new NameInputScreen()

  render: ->
    super
