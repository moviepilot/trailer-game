class @Controllers

  stopPollingPlayers: false

  @startPollingPlayers: (@callback = ->) ->
    return if @stopPollingPlayers

    setTimeout @lookForPlayers, 1000

  @lookForPlayers: =>
    return if @stopPollingPlayers

    gamepads = navigator.webkitGetGamepads()

    for gamepad, index in gamepads
      if gamepad
        @callback index, gamepad

    console.log gamepads[0], gamepads[1]

    setTimeout @lookForPlayers, 1000