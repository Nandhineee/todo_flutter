import "package:flutter/material.dart";
import 'package:todo/categories.dart';
import 'package:todo/listview.dart';
import 'package:todo/nextpage.dart';
import 'package:todo/item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  Locale localeMain = const Locale('en'); // Default locale

  // List of supported locales
  List<Locale> supportedLocales = [
    const Locale('en'),
    const Locale('de'),
  ];

  // Function to handle locale change
  void changeLocale(Locale? locale) {
    setState(() {
      localeMain = locale!;
    });
  }

  late List<Task> taskList;

  // late Locale _locale;
  // late List<Locale> _supportedLocales;
  // late Function(Locale) changeLocale;

  @override
  void initState() {
    super.initState();
    taskList = tasks;
    // _locale = widget.locale;
    // _supportedLocales = widget.supportedLocales;
    // changeLocale = widget.changeLocale;
  }

  void navigateToAddTodoPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const header()),
    );
    tasks.add(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
      home: Scaffold(
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
            Container(
              alignment: Alignment.topRight,
              child: DropdownButton<Locale>(
                value: localeMain,
                onChanged: (Locale? newLocale) {
                  changeLocale(newLocale!);
                },
                items: supportedLocales.map((Locale locale) {
                  return DropdownMenuItem<Locale>(
                    value: locale,
                    child: Text(locale.languageCode),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                  " Nandhini",
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "AppLocalizations.of(context)!.categories",
                style: const TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 214, 204, 204)),
              ),
            ),
            const Addlist(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Today's Task",
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 216, 203, 203)),
              ),
            ),
            Expanded(
              child: listview(
                taskList: taskList,
              ),
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
                backgroundImage: AssetImage('path/to/your/image.png'),
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
          onPressed: () {
            print("helo");
            navigateToAddTodoPage(context);
          },
          // Add icon
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
