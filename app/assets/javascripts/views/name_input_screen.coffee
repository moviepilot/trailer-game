class @NameInputScreen extends Backbone.View

  constructor: ->
    super
    @on "gamepadButtonPressed", -> Game.goto('GameInstructions')

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
