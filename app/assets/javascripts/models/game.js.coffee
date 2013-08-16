class Game
  state: 0

  @STATES:
    WAITING_FOR_PLAYERS: 0
    PLAYING: 1
    SINGLE_USER_INPUT: 2

  players: []

  start: ->
    Controllers.startPollingPlayers @

  goTo: (viewClass) ->
    view = new viewClass

  addPlayer: (index, gamepad) ->


window.Game = Game