#= require './name_input_screen'

class @GameView extends Backbone.View

  goTo: (viewClass) ->
    if @currentView
      @currentView.viewWillDisappear?()
      @currentView.$el.remove()
    @currentView = new viewClass
      el: $('body')
    @currentView.render()
    @currentView.viewDidAppear?()


  constructor: ->
    super
    @goTo(NameInputScreen)


  render: ->
    super