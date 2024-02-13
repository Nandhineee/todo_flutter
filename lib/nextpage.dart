import 'package:flutter/material.dart';

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _nextpage();
}

class _nextpage extends State<header> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.white,
              // Your Scaffold content here
            ),
            Positioned(
              top: 100.0, // Adjust the positioning as needed
              right: 50.0,// Adjust the positioning as needed
              child: ElevatedButton(
                onPressed: () {

                  // Your onPressed function her
                  // e
                }, // Changed from Text to Icon
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.grey, // Specify border color here
                      width: 1.0, // Specify border width here
                    ),

                  ),

                  // Making the button round
                  padding: EdgeInsets.all(20),
                  primary: Colors.white, // Button color set to white
                  onPrimary: Colors.black, // This sets the icon color if you need to change it from the default
                  elevation: 0,
                  // Button size
                ),

          child: Icon(Icons.close,size: 20,)
              ),
            ),

              const Padding(
                padding: EdgeInsets.only(left:60.0,right:50.0,top:200.0,bottom:08.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter new task',
                    border: InputBorder.none, // Removes the border
                    // Additional decoration can be added here
                  ),
                  style: TextStyle(fontSize: 25.0),

                  // Further customization of the TextField
                ),
              ),
        Padding(
          // Adjusts the alignment slightly to the upper right
          padding: EdgeInsets.only(left: 60.0, top: 280.0), // Right and Upwards
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // To minimize the row's width to its children's width
                    children: [
                      Icon(Icons.calendar_today), // Calendar icon
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
                      side: BorderSide(color: Colors.transparent, width: 0), // No visible border
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10), // Space between the two buttons
              ElevatedButton(
                onPressed: () {
                  // Your button action here for the round button
                  print('Round Button Pressed');
                },
                child: Icon(Icons.radio_button_checked,size: 30.0,color: Colors.blue,), // Check icon
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200], // Button color
                  onPrimary: Colors.black, // Icon color
                  elevation: 0, // Removes the elevation
                  shape: CircleBorder(), // Makes the button round
                  padding: EdgeInsets.all(15), // Button size
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
                    Icon(Icons.file_download_done_outlined,color: Colors.grey),
                    Icon(Icons.flag_circle,color:Colors.grey),
                    Icon(Icons.nights_stay,color: Colors.grey),
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
                        // Your button action here
                        print('Elevated Button Pressed');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // To minimize the row's width to its children's width
                        children: [

                          Text('New Task'),
                          Icon(Icons.arrow_downward_outlined), // Calendar icon
                          SizedBox(width: 10), // Space between icon and text
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Button color
                        onPrimary: Colors.black, // Text color
                        elevation: 0, // Removes the elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // Rounded corners
                          side: BorderSide(color: Colors.transparent, width: 0), // No visible border
                        ),
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