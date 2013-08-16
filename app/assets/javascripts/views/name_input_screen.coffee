# = require '../models/categories'

class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", ->
      Controllers.stopPollingPlayers = true
      Controllers.stopPollingStates = true
      gameView.goto(new InitialCountdownScreen)

    @categories = new Categories()
    @categories.fetch().then @renderCategories

    Controllers.startPollingPlayers @addPlayer

  render: ->
    @$el.append '
      <ul class="players"></ul>
    '

    button = @$el.append('<button>Start!</button>')
    button.on 'click', => @trigger "gamepadButtonPressed"

  addPlayer: (index, gamepad) =>
    player = gameView.gameState.players.get index
    return if player
    player = new Player id: index
    gameView.gameState.players.add player
    li = "<li data-player-index=#{index}>Player #{index}</li>"
    $('.players').append li

    Controllers.startPollingStates @checkIfGameButtonPressed

  checkIfGameButtonPressed: (index, state) =>
    player = gameView.gameState.players.get index
    return unless player

    if state.buttons[16] is 1
      @trigger "gamepadButtonPressed"

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
