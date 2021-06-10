import 'package:flutter/cupertino.dart';
import 'package:inter/components/board.dart';
import 'package:inter/controller/inputController.dart';

class GameController{
  Map config;
  Board board;
  int _score;
  InputController controller;
  int maxScore;
  GameController(Map config,Map positions, int maxScore, int m, int n){
    this._score=0;
    this.maxScore=maxScore;
    this.config=config;
    this.controller= new InputController(InputOptions.Swipe);
    this.board = new Board(config,positions);
    this.controller.onDirection.listen((direction){
      movePlayer(direction);
    });
    this._renderBoard(m,n);
  }
  movePlayer(direction){
    //check direction
    // board.player.posX+-1
    //or
    // board.player.posY+-1
    checkCollision();
  }
  checkCollision(){
    //check if player touches the treasure if yes increase the score
  }
  int getScore(){
    //return score
  }
  Widget _renderBoard(int m, int n){
    List<Widget> rows=[];
    for (int i=0;i<m; i++){
      List<Widget> cols = [];
      for(int j=0; j<n; j++){
        if(/*check for pos of player*/)
          cols[j] = board.player.renderPlayer();
        else if(/*check for pos of treasure*/)
          cols[j] = board.treasure.renderTreasure();
        else
          cols[j] = board.square.renderSquare();
      }
      rows[i] = new Row(
        children: cols,
      );
    }
  }
}