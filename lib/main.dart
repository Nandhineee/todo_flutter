import "package:flutter/material.dart";
import 'package:todo/categories.dart';
import 'package:todo/listview.dart';
import 'package:todo/nextpage.dart';
import 'package:todo/item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp( const MyApp());

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

  // late List<Task> taskList;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   taskList = tasks;
  // }

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
      locale: localeMain,
      home: TestApp(
          locale: localeMain,
          changeLocale: changeLocale,
          supportedLocales: supportedLocales)
    );


  }
}

class TestApp extends StatefulWidget {
  const TestApp({super.key,
  required this.locale,
    required this.changeLocale,
    required this.supportedLocales,

  });


  final Function(Locale) changeLocale;
  final Locale locale;
  final List<Locale> supportedLocales;


  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {

  late List<Task> tasksList;
  late Locale _locale;
  late List<Locale> _supportedLocales;
  late Function(Locale) changeLocale;


  @override
  void initState() {
    super.initState();
    tasksList = tasks;
    _locale = widget.locale;
    _supportedLocales = widget.supportedLocales;
    changeLocale = widget.changeLocale;
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
    print(AppLocalizations.of(context)!.categories);
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
            onPressed: () {
              print(AppLocalizations.of(context)!.localeName);
            },
          ),
          Container(
            alignment: Alignment.topRight,
            child: DropdownButton<Locale>(
              value: _locale,
              onChanged: (Locale? newLocale) {
                changeLocale(newLocale!);
              },
              items: _supportedLocales.map((Locale locale) {
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
          Row(
            children: <Widget>[
              const SizedBox(width: 20),
              Text(
                "${AppLocalizations.of(context)!.welcome_message} Joy ",
                style: const TextStyle(fontSize: 30.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              AppLocalizations.of(context)!.categories,
              style: const TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 214, 204, 204)),
            ),
          ),
          const Addlist(),
           Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              AppLocalizations.of(context)!.today_Task,
              style: const TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 216, 203, 203)),
            ),
          ),
          Expanded(
            child: listview(
              taskList: tasksList,
            ),
          ),
        ],
      ),
      drawer: const Drawer(

        elevation: 10.0,
        backgroundColor:Colors.indigoAccent,
        child: Column(
          children: <Widget>[
            SafeArea(
                child: CircleAvatar(
                  radius:20,
                  backgroundImage: AssetImage("/images/icon.jpg"),
                )),

            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Nandhini",
                style: TextStyle(fontSize: 30.0),

              ),
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
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(AppLocalizations.of(context)!.categories);
          navigateToAddTodoPage(context);
        },
        // Add icon
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}



