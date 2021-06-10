import 'package:flutter/cupertino.dart';
import 'package:inter/components/entity.dart';

class Player extends Entity {
  int id;
  String graphics;
  Player(posX, posY, id, graphics) : super(null, null) {
    this.id=id;
    this.graphics=graphics;
  }
  Widget renderPlayer(){

  }
}