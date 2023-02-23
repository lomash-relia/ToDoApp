import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  //run this method if first time opening the app
  void createInitialData() {
    toDoList = [
      ['Add a task', false],
      ['Add a note', false],
    ];
  }

  //load data from db
  void loadData() {
    toDoList=_myBox.get("TODOLIST");
  }

  //update db
  void updateDataBase() {
    _myBox.put("TODOLIST",toDoList);
  }
}
