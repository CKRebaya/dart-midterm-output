import 'dart:io';
import "dart:math";
import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:characters/characters.dart';

void main() {

var list= ['📃', '✂', '🗿'];
var user = 0;
var bot = 0;
var round = 0;

//	For continuous rounds;
  while (true){
  print("");
  round++;
  print("Round $round");
  print("Papel, Gunting, Bato! What's your Pick?");
  String pick1 = stdin.readLineSync();
  var element = getRandomElement(list);
  String gameOver = "end game";

//For draw
  if(pick1.characters.length==5 && element=='📃' ||pick1.characters.length==7 && element=='✂'||pick1.characters.length==4 && element=='🗿')
  {
  if(pick1.characters.length==5){
  pick1 = Emojis.pageWithCurl;
  }
  else if(pick1.characters.length==7){
  pick1 = Emojis.scissors;
  }
  if (pick1.characters.length==4){
  pick1 = Emojis.moai;
  }
  print("Bot: "+ element + "  | You: " + pick1 + "  - It's a draw!");
  print("Type 'end game' to quit.");
  user++;
  bot++;
}

// For bot winner
else if (pick1.characters.length==5 && element=='✂' ||pick1.characters.length==7 && element=='🗿'||pick1.characters.length==4 && element=='📃')
  {
  if(pick1.characters.length==5){
  pick1 = Emojis.pageWithCurl;
  }
  else if(pick1.characters.length==7){
  pick1 = Emojis.scissors;
  }
  if (pick1.characters.length==4){
  pick1 = Emojis.moai;
  }
  print("Bot: "+ element + "  | You: " + pick1 + "  - You lose!");
  print("Type 'end game' to quit.");
  bot++;
}

// For user winner
else if (pick1.characters.length==5 && element=='🗿' ||pick1.characters.length==7 && element=='📃'||pick1.characters.length==4 && element=='✂')
  {
  if(pick1.characters.length==5){
  pick1 = Emojis.pageWithCurl;
  }
  else if(pick1.characters.length==7){
  pick1 = Emojis.scissors;
  }
  if (pick1.characters.length==4){
  pick1 = Emojis.moai;
  }
  print("Bot: "+ element + "  | You: " + pick1 + "  - You win!");
  print("Type 'end game' to quit.");
  user++;
}

  if (pick1 == gameOver) {
// ------- TOTAL SCORE --------
    if(user>bot){
      print("");
      print("----------------------------------------");
      print("You Win!   Bot: $bot | User: $user"); 
      print("");
    }
    else if(user==bot){
      print("");
      print("----------------------------------------");
      print("It's a draw!   Bot: $bot | User: $user"); 
      print("");
    } 
   else{
     print("");
     print("----------------------------------------");
     print("You Lose!   Bot: $bot | User: $user"); 
     print("");
    } 
  return;
  }
}
}
T getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];

}
