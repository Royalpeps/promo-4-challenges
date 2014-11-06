var position1 = 1;
var position2 = 1;
var session_id = 0;
var game_id = 1234;
var player_id = 0;
var time1 = 0;
var result_winner = 0;
var result_time = 0;

$(function() {

  $.get( "/session/create", function( data ) {
    console.log("Page chargée !");
    console.log(data);
    session_id = data.id; // Code HTML
  });

  $('#start_button').show();

  $("#start_button").on('click', function() {
    $("#start_button").hide();
  });

  $("#play").on('click', function() {
    time1 = $.now();
    data = {
      "players": [
        { "name": $("#namePlayer1").val() },
        { "name": $("#namePlayer2").val() }
      ]
    };

    $.ajax({
     type: 'POST',
     url: "/session/" + session_id + "/game/create",
     data: JSON.stringify(data),
     contentType: 'application/json',
     success: function(data) {
        console.log("Noms enregistrés !");
        console.log(data);
        game_id = data.game.id;
        console.log(game_id);
      }
    });

    $('#myModal').hide();
    $('.modal-backdrop').hide();
    $('#game').show();

  });


  $(document).on('keyup', function(event) {

    var pressedKey = event.keyCode;

    if (pressedKey == 81 && position2 < 10) {
      position1++;
      console.log(update_player_position("player1", position1));
    }

    if (pressedKey == 80 && position1 < 10) {
      position2++;
      console.log(update_player_position("player2", position2));
    }

    if (pressedKey == 82) {
      $('body .result').remove();
      return restart();
    }

    if (position1 == 10) {
      player_id = 1;
      return finish(1);
    }

    if (position2 == 10) {
      player_id = 2;
      return finish(2);
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

function finish(player_id) {
  $(".active").removeClass("active")

  data = {
      "winner": player_id,
      "elapsed_time": $.now() - time1
  }

  $.ajax({
     type: 'POST',
     url: "/game/" + game_id + "/finish",
     data: JSON.stringify(data),
     contentType: 'application/json',
     success: function(data) {
        console.log(game_id);
        console.log(data);
     }
  });

  $.get( "/game/" + game_id + "/results", function( data ) {
    console.log(data);
    console.log(game_id);
    result_winner = data.game.winner;
    result_time = data.game.elapsed_time;
    $('#game').hide();

    var overlay = $("<p> the winner is player " + result_winner + " and the time spent playing is " + result_time + " milliseconds</p>").addClass('result');
    $('body').append(overlay);
  });

}



console.log(update_player_position("player1", 1))
console.log(update_player_position("player2", 1))
