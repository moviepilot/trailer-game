class @Controllers

  stopPollingPlayers: false
  stopPollingStates: false

  @oldState: {}

  @startPollingPlayers: (@callback = ->) ->
    @stopPollingPlayers = false

    @playerTimeout = setTimeout @lookForPlayers, 1000

  @lookForPlayers: =>
    if @stopPollingPlayers
      clearTimeout @playerTimeout
      return 

    gamepads = navigator.webkitGetGamepads()

    for gamepad, index in gamepads
      if gamepad
        @callback index, gamepad

    console.log gamepads[0], gamepads[1]

    setTimeout @lookForPlayers, 1000

  @startPollingStates: (@statesCallback = ->) ->
    @stopPollingStates = false

    requestAnimationFrame @newState

  @newState: =>
    return if @stopPollingStates

    gamepads = navigator.webkitGetGamepads()

    for gamepad, index in gamepads
      if gamepad
        newState = gamepad.timestamp
        if @oldState[index] isnt newState
          @oldState[index] = newState
          @statesCallback index, gamepad    

    requestAnimationFrame @newState
