# = require '../models/categories'

class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

    @categories = new Categories()
    @categories.fetch().then @renderCategories


  render: ->
    @$el.append '
      <h2>Press any button on the remote to continue</h2>
      <ul class="players">
        <li>1 <div class="color red"></div></li>
        <li>2 <div class="color yellow"></div></li>
        <li>3 <div class="color green"></div></li>
        <li>4 <div class="color blue"></div></li>
      </ul>
    '

    button = @$el.append('<button>Start!</button>')
    button.on 'click', => gameView.goto(new GameInstructionsScreen)

  renderCategories: =>
    select = "<select id='category-select'>"

    # set the game state to the first category
    gameView.gameState.categoryId = @categories.first()?.id

    @categories.each (category) ->
      select += "<option value='#{category.get('id')}'>#{category.get('name')}</option>"

    select += "</select>"

    @$el.append(select)

    $('#category-select').change @selectCategory

  selectCategory: (event) ->
    gameView.gameState.categoryId = $(event.target).val()
