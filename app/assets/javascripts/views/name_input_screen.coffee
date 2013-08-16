# = require '../models/categories'

class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

    @categories = new Categories()
    @categories.fetch().then @renderCategories

  render: ->
    @$el.append('Name Input Screen')

  renderCategories: =>
    select = "<select id='category-select'>"
    
    @categories.each (category) ->
      select += "<option data-category-id='#{category.get('id')}'>#{category.get('name')}</option>"

    select += "</select>"

    @$el.append(select)

    $('#category-select').change @selectCategory

  selectCategory: ->
