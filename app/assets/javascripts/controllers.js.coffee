class Controllers

  @startPollingPlayers: (@game) ->
    return if @game.state isnt Game.STATES.WAITING_FOR_PLAYERS

    setTimeout @lookForPlayers, 1000

  @lookForPlayers: =>
    return if @game.state isnt Game.STATES.WAITING_FOR_PLAYERS

    gamepads = navigator.webkitGetGamepads()

    for gamepad, index in gamepads
      if gamepad
        @game.addPlayer index, gamepad

    console.log gamepads[0], gamepads[1]

    #console.log gamepads
    setTimeout @lookForPlayers, 1000
    

window.Controllers = Controllers