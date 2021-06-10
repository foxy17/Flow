import 'package:flutter/cupertino.dart';
import 'package:inter/components/entity.dart';

class Treasure extends Entity {
  int id;
  String graphics;
  Treasure(int posX, int posY, int id, String graphics) : super(null, null) {
    this.id=id;
    this.graphics=graphics;
  }
  Widget renderTreasure(){

  }
}