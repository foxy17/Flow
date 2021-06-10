
import 'dart:async';

import 'package:inter/controller/inputTypeController.dart';
enum InputOptions{
  Swipe
}
class InputController{
  InputOptions _inputType;
  InputTypeController inputTypeController;
  StreamController directionEventsController; //capture user events
  InputController(InputOptions inputType){
    this._inputType=inputType;
    directionEventsController = new StreamController.broadcast();
    inputTypeController=new InputTypeController(InputOptions.Swipe);
    if(_inputType==InputOptions.Swipe){
      inputTypeController.onChange.listen((event) {
        convertSwipeToDirection(event);
      });
    }
  }
  setInputType(){
    //set input type in controller
  }
  convertSwipeToDirection(params){
    //convert swipe to direction
    //push direction on the stream
  }
  Stream get onDirection => directionEventsController.stream; //emits directions

}
