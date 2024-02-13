import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _MyWidgetState();

}

class _MyWidgetState extends State<listview> {
  int? _selectedTaskIndex;
  final List<String> items = List<String>.generate(10, (i) => "Task ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10, // Number of items in the list, change as needed
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color of the box
            borderRadius: BorderRadius.circular(15.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 2,
                blurRadius: 5,
                 // Changes position of shadow
              ),
            ],
          ),
          child: RadioListTile<int>(
            value: index, // The value represented by this radio button
            groupValue: _selectedTaskIndex, // The currently selected value for this group of radio buttons
            onChanged: (int? newValue) {
              // Update the state to reflect the new selected radio button
              setState(() {
                _selectedTaskIndex = newValue;
              });
            },
            title: Text('Task ${index + 1}'),
             // Positions the radio button at the start of the ListTile
          ),
        );
      },
    );

  }
}
