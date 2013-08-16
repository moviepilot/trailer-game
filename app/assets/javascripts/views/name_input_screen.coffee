# = require '../models/categories'

class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

    @categories = new Categories()
    @categories.fetch().then @renderCategories

  render: ->
    @$el.append '
      <p>Press any button on the remote to continue</p>
      <ul class="players">
        <li><div class="color red"></div>1</li>
        <li><div class="color yellow"></div>2</li>
        <li><div class="color green"></div>3</li>
        <li><div class="color blue"></div>4</li>
      </ul>
    '

  renderCategories: =>
    select = "<select id='category-select'>"

    # set the game state to the first category
    gameView.gameState.categoryId = @categories.first().id
    
    @categories.each (category) ->
      select += "<option value='#{category.get('id')}'>#{category.get('name')}</option>"

    select += "</select>"

    @$el.append(select)

    $('#category-select').change @selectCategory

  selectCategory: (event) ->
    gameView.gameState.categoryId = $(event.target).val()
