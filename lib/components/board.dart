import 'package:inter/components/entities/player.dart';
import 'package:inter/components/entities/treasure.dart';
import 'package:inter/components/square.dart';


class Board{
  Map positions;
  Map config;
  Player player;
  Treasure treasure;
  Square square;
  Board(Map positions, Map configs){
    player = new Player(positions["Player"].x,positions["Player"].y,configs["idPlayer"],configs["graphicsPlayer"]);
    treasure = new Treasure(positions["Treasure"].x,positions["Treasure"].y,configs["idTreasure"],configs["graphicsTreasure"]);
    square = new Square(configs["idTreasure"],configs["graphicsTreasure"]);
  }

}