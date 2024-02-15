import 'package:flutter/material.dart';
import 'package:todo/item.dart';
import 'package:todo/nextpage.dart';
import 'package:todo/item.dart';

class listview extends StatefulWidget {
  const listview({super.key, required this.taskList});

  final List<Task> taskList;

  @override
  State<listview> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<listview> {
  late List<Task> taskList;

  @override
  void initState() {
    super.initState();
    taskList = widget.taskList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(tasks[index].taskName),
          onDismissed: (DismissDirection direction) {
            setState(() {
              tasks.removeAt(index);
            });
          },
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 130.0),
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("The Task was deleted"),
                ),
                Icon(Icons.delete, color: Colors.grey),
              ],
            ),
          ),
          child: Container(
              height: 55.0,
              margin: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
              // Add padding inside the box
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the box
                borderRadius: BorderRadius.circular(13.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Shadow color
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
                // border: Border.all(color: Colors.grey.shade300), // Optional border
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          taskList[index].isCompleted =
                              !taskList[index].isCompleted;
                          setState(() {});
                        },
                        child: Container(
                            width: 24,
                            height: 24,
                            // color: Colors.green,
                            decoration: taskList[index].isCompleted
                                ? BoxDecoration(
                              color: Color.fromARGB(255, 179, 194, 202),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color.fromARGB(255, 179, 194, 202),
                                      // Customize border color
                                      width: 3.0,
                                    ),
                                  )
                                : BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: taskList[index].color,
                                      // Customize border color
                                      width: 3.0,
                                    ),
                                  ),
                            child: taskList[index].isCompleted
                                ? const Icon(
                                    Icons.check,
                                    size:15.0,
                                    color: Colors.white, // Customize tick color
                                  )
                                : null),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(tasks[index].taskName,
                        style: taskList[index].isCompleted
                            ? const TextStyle(
                                decoration: TextDecoration.lineThrough)
                            : null),
                  ),
                ],
              )),
        );
      },
    );
  }
}
