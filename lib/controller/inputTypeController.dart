import 'dart:async';
class InputTypeController{
  StreamController fetchEventsController; //capture user events
  InputTypeController(type){
    fetchEventsController = new StreamController.broadcast();
  }
  Stream get onChange => fetchEventsController.stream;

}