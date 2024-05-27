import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Widget scrren() {
      if (index == 0)
        return Scrren2();
      else
        return Scrren1();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.delete),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 6,
          shape: CircularNotchedRectangle(),
          color: Colors.lightBlue,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ],
          ),
        ),
        body: scrren());
  }
}

class Scrren1 extends StatelessWidget {
  const Scrren1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Ini scrren 1");
  }
}

class Scrren2 extends StatelessWidget {
  const Scrren2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Ini scrren 2");
  }
}
