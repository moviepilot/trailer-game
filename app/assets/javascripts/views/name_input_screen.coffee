# = require '../models/categories'

class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> gameView.goto(new GameInstructionsScreen)

    @categories = new Categories()
    @categories.fetch().then @renderCategories

    Controllers.startPollingPlayers @addPlayer

  render: ->
    @$el.append '
      <h2>Press any button on the remote to continue</h2>
      <ul class="players">
      </ul>
    '

    button = @$el.append('<button>Start!</button>')
    button.on 'click', => gameView.goto(new GameInstructionsScreen)

  addPlayer: (index, gamepad) =>
    player = gameView.gameState.players.get index
    return if player
    player = new Player id: index
    gameView.gameState.players.add player
    li = "<li data-player-index=#{index}>#{player.get('name')} (player id: #{index})</li>"
    $('.players').append li

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
