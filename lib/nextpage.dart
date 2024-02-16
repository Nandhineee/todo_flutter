import 'package:flutter/material.dart';
import 'package:todo/item.dart';

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _nextpage();
}

class _nextpage extends State<header> {
  final _taskcontroller = TextEditingController();
  // DateTime _selectedDate = DateTime.now();
  //
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2015, 8),
  //     lastDate: DateTime(2101),
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
           const  Scaffold(
              backgroundColor: Colors.white,
              // Your Scaffold content here
            ),
            Positioned(
              top: 100.0, // Adjust the positioning as needed
              right: 50.0,// Adjust the positioning as needed
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, // Changed from Text to Icon
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.grey, // Specify border color here
                      width: 1.0, // Specify border width here
                    ),

                  ),

                  // Making the button round
                  padding: const EdgeInsets.all(20),
                  primary: Colors.white, // Button color set to white
                  onPrimary: Colors.black, // This sets the icon color if you need to change it from the default
                  elevation: 0,
                  // Button size
                ),

          child: const Icon(Icons.close,size: 20,)
              ),
            ),

               Padding(
                padding: const EdgeInsets.only(left:60.0,right:50.0,top:200.0,bottom:08.0),
                child: TextField(
                  controller: _taskcontroller,
                  decoration: const InputDecoration(
                    hintText: 'Enter new task',
                    border: InputBorder.none,
                    // Removes the border

                    // Additional decoration can be added here
                  ),

                  style: const TextStyle(fontSize: 25.0),

                  // Further customization of the TextField
                ),
              ),


            Padding(
          // Adjusts the alignment slightly to the upper right
          padding:  const EdgeInsets.only(left: 60.0, top: 280.0), // Right and Upwards
          child: Row(
            children: [
              SizedBox(
                width: 130.0,
                height: 50.0, // Specifies the width and height of the first button
                child: ElevatedButton(
                  onPressed: () {
                    // Your button action here
                    print('Elevated Button Pressed');
                  },
                  child:  Row(
                    mainAxisSize: MainAxisSize.min, // To minimize the row's width to its children's width
                    children: [
                      Icon(Icons.calendar_month), // Calendar icon
                      SizedBox(width: 10), // Space between icon and text
                      Text('today'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // Button color
                    onPrimary: Colors.black, // Text color
                    elevation: 0, // Removes the elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                      side: const BorderSide(color: Colors.transparent, width: 0), // No visible border
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Space between the two buttons
              ElevatedButton(
                onPressed: () {
                  // Your button action here for the round button
                  print('Round Button Pressed');
                },
                child: const Icon(Icons.radio_button_checked,size: 30.0,color: Colors.blue,), // Check icon
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200], // Button color
                  onPrimary: Colors.black, // Icon color
                  elevation: 0, // Removes the elevation
                  shape: const CircleBorder(), // Makes the button round
                  padding: const EdgeInsets.all(15), // Button size
                ),

              ),
            ],
          ),
        ),
            Container(
              child:const Padding( // Wrap the Row with Padding for overall padding
                padding: EdgeInsets.only(left:40.0,right:50.0,top:400.0), // Adjust the overall padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.create_new_folder,color: Colors.grey),
                    Icon(Icons.flag_outlined,color:Colors.grey),
                    Icon(Icons.nightlight_outlined,color: Colors.grey),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  bottom: 20.0, //Distance from the bottom of the screen
                  right: 10.0, // Distance from the right side of the screen
                  child: SizedBox(
                    width: 150.0,
                    height: 50.0, // Specifies the width and height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        if (_taskcontroller.text.isNotEmpty) {
                          Task currentTask = Task(tasks.length + 1, _taskcontroller.text,Colors.green,false,);
                          Navigator.pop(context, currentTask);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Button color
                        onPrimary: Colors.black, // Text color
                        elevation: 0, // Removes the elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // Rounded corners
                          side: const BorderSide(color: Colors.transparent, width: 0), // No visible border
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min, // To minimize the row's width to its children's width
                        children: [

                          Text('New Task'),
                          Icon(Icons.keyboard_arrow_up), // Calendar icon
                          SizedBox(width: 10), // Space between icon and text
                        ],
                      ),

                    ),
                  ),
                ),

              ],
            ),






          ],
        ),
      ),
    );


  
  }
}