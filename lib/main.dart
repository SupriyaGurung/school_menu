import 'package:flutter/material.dart';
import 'lunchmenu.dart';
import 'showlunch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NYCDOE Cafeteria',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'School Lunch Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: GridView.builder(
          itemCount: LunchMenu.weeklyLunch.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShowLunch(menu: LunchMenu.weeklyLunch[index]);
                    },
                  ),
                );
              },
              child: buildLunchCard(LunchMenu.weeklyLunch[index]),
            );
          }, //item builder
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2,
            crossAxisCount: 1,
          ),
        ),
      ),
    );
  }

  Widget buildLunchCard(LunchMenu lunch) {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2.0, 10, 2, 0),
        child: Column(
          children: <Widget>[
            Text(
              lunch.lunchDay,
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Helvetica',
              ),
            ),
            Image(image: AssetImage(lunch.lunchPic)),
          ],
        ),
      ),
    );
  }
}
