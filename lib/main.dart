import "package:flutter/material.dart";
import 'package:todo/categories.dart';
import 'package:todo/listview.dart';
import 'package:todo/nextpage.dart';





void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,

        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(
              Icons.notifications, // The bell icon
            ),
            onPressed: () {},
          ),

        ],
      ),
      body: const   Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

           Row(
            children: <Widget>[
              SizedBox(width: 20),
              Text(
                "What's up, Joy!",
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),

         Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              "CATEGORIES",
              style: TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 214, 204, 204)),
            ),
          ),
             Addlist(),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              "Today's Task",
              style: TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 216, 203, 203)),
            ),
          ),
           Expanded(
            child: listview(),
          ),
        ],
      ),

      drawer: const Drawer(
        elevation: 10.0,
        backgroundColor: Color.fromARGB(255, 45, 76, 131),
        child: Column(
          children: <Widget>[
            SafeArea(
                child: CircleAvatar(
              backgroundColor: Colors.indigo,
            )),
            Text(
              "Nandhini",
              style: TextStyle(fontSize: 30.0),
            ),
            ListTile(
              title: Text("Templates"),
              leading: Icon(Icons.save),
            ),
            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.category),
            ),
            ListTile(
              title: Text("Analytics"),
              leading: Icon(Icons.analytics),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
floatingActionButton: FloatingActionButton(
   onPressed: (

       ) {
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => header()),
     );

  },
  child: Icon(Icons.add), // Add icon
  backgroundColor: Colors.blue,
),

    );
  }
}
