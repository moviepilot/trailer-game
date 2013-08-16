class @Controllers

  @startPollingPlayers: (@callback = ->) ->
    return if @game.state isnt Game.STATES.WAITING_FOR_PLAYERS

    setTimeout @lookForPlayers, 1000

  @lookForPlayers: =>
    return if @game.state isnt Game.STATES.WAITING_FOR_PLAYERS

    gamepads = navigator.webkitGetGamepads()

    for gamepad, index in gamepads
      if gamepad
        @callback index, gamepad

    console.log gamepads[0], gamepads[1]

    setTimeout @lookForPlayers, 1000