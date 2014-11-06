var position1 = 1;
var position2 = 1;

$(function() {

  $(document).on('keyup', function(event) {

    var pressedKey = event.keyCode;

    if (pressedKey == 81) {
      position1++;
      console.log(update_player_position("player1", position1));
    }

    if (pressedKey == 80) {
      position2++;
      console.log(update_player_position("player2", position2));
    }

    if (pressedKey == 82) {
      $('body .result').remove();
      return restart();
    }

    if (position1 == 10) {
      var overlay = $('<p class="result">Player 1 won!</p>').addClass('result');
      $('body').append(overlay);
      return finish();
    }

    if (position2 == 10) {
      var overlay = $('<p class="result">Player 2 won!</p>').addClass('result');
      $('body').append(overlay);
      return finish();
    }

  });

});

function update_player_position(player, new_position) {
  $("#" + player + "_race td").removeClass('active')
  return $("#" + player + "_race td:nth-child(" + new_position + ")").addClass('active')
}

function restart() {
  position1 = 1;
  position2 = 1;
  console.log(update_player_position("player1", position1));
  console.log(update_player_position("player2", position2));
  }

function finish() {
  var overlay = $('<p class="result">Press R to play again</p>').addClass('result');
  $('body').append(overlay);
}

console.log(update_player_position("player1", 1))
console.log(update_player_position("player2", 1))

