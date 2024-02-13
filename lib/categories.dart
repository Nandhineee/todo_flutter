 import 'package:flutter/material.dart';


 void main() {
   runApp(Addlist());
 }

class Addlist extends StatefulWidget {
  const Addlist({super.key});

  @override
  State<Addlist> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Addlist> {
  @override
  Widget build(BuildContext context) {
    return
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
   child:Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 100.0,
                  margin: const EdgeInsets.only(
                      right: 10.0), // Right margin to add space between boxes
                  alignment: Alignment
                      .center, // Center the column widget inside the container
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 243, 242, 242), // Box background color
                    borderRadius: BorderRadius.circular(15.0), // Rounded border
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '40 tasks',
                        textAlign: TextAlign
                            .start, // The new text you want to display above "Business"
                        style: TextStyle(
                          color:
                              Color.fromARGB(255, 216, 207, 207), // Text color
                          fontSize: 15.0,

                          // Adjust the size as needed
                        ),
                      ),
                      const Text(
                        'Business', // The existing text
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20.0, // Text size
                        ),
                      ),
// Adds vertical spacing before the progress bar
                      SizedBox(
                        height: 7.0,
                        width: 100.0, // Specify the desired width here
                        child: ClipRRect(
                          // Clip the progress bar to have rounded corners
                          borderRadius: BorderRadius.circular(
                              10.0), // Rounded corners for progress bar
                          child: const LinearProgressIndicator(
                            value: 0.2, // Progress value
                            minHeight: 6.0, // Height of the progress bar
                            backgroundColor: Colors.grey,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // The second container remains unchanged
                Container(
                  width: 150.0,
                  height: 100.0,
                  margin: const EdgeInsets.only(
                      right: 10.0), // Right margin to add space between boxes
                  alignment: Alignment
                      .center, // Center the column widget inside the container
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 243, 242, 242), // Box background color
                    borderRadius: BorderRadius.circular(15.0), // Rounded border
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Use the minimum space that encloses the children
                    children: [
                      const Text(
                        '80 tasks', // The new text you want to display above "Business"
                        style: TextStyle(
                          color:
                              Color.fromARGB(255, 219, 212, 212), // Text color
                          fontSize: 15.0, // Adjust the size as needed
                        ),
                      ),
                      const Text(
                        'Personal', // The existing text
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20.0, // Text size
                        ),
                      ),
// Adds vertical spacing before the progress bar
                      SizedBox(
                        height: 7.0,
                        width: 100.0, // Specify the desired width here
                        child: ClipRRect(
                          // Clip the progress bar to have rounded corners
                          borderRadius: BorderRadius.circular(
                              10.0), // Rounded corners for progress bar
                          child: const LinearProgressIndicator(
                            value: 0.2, // Progress value
                            minHeight: 6.0, // Height of the progress bar
                            backgroundColor: Colors.grey,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.indigo),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                  Container(
                  width: 150.0,
                  height: 100.0,
                  margin: const EdgeInsets.only(
                      right: 10.0), // Right margin to add space between boxes
                  alignment: Alignment
                      .center, // Center the column widget inside the container
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 243, 242, 242), // Box background color
                    borderRadius: BorderRadius.circular(15.0), // Rounded border
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Use the minimum space that encloses the children
                    children: [
                      const Text(
                        '80 tasks', // The new text you want to display above "Business"
                        style: TextStyle(
                          color:
                              Color.fromARGB(255, 219, 212, 212), // Text color
                          fontSize: 15.0, // Adjust the size as needed
                        ),
                      ),
                      const Text(
                        'Personal', // The existing text
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20.0, // Text size
                        ),
                      ),
// Adds vertical spacing before the progress bar
                      SizedBox(
                        height: 7.0,
                        width: 100.0, // Specify the desired width here
                        child: ClipRRect(
                          // Clip the progress bar to have rounded corners
                          borderRadius: BorderRadius.circular(
                              10.0), // Rounded corners for progress bar
                          child: const LinearProgressIndicator(
                            value: 0.2, // Progress value
                            minHeight: 6.0, // Height of the progress bar
                            backgroundColor: Colors.grey,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
   )
          );
  }
}