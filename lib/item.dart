import 'package:flutter/material.dart';

class Task {
  num taskId;
  String taskName;
  Color color;
  bool isCompleted;

  Task(this.taskId, this.taskName,
      this.color,this.isCompleted);
}

List<Task> tasks = [
  Task(1, "Walking",  Colors.blue,true),
  Task(2, "Reading Books",  Colors.pink,false),
  Task(3, "Travelling",  Colors.blue,false),
  Task(4, "Drink Water",  Colors.blue,false),
  Task(5,  "studying",  Colors.pink,false),
  Task(6,  "Playing", Colors.blue,false),
  Task(7,  "Meeting",  Colors.pink,false),
  Task(8,  "jogging",  Colors.blue,false),
];