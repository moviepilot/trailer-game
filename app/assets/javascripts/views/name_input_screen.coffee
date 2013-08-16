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
        <li><div class="color red"></div>Player 1</li>
        <li><div class="color yellow"></div>Player 2</li>
        <li><div class="color green"></div>Player 3</li>
        <li><div class="color blue"></div>Player 4</li>
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
