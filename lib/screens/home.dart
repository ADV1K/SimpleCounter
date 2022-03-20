/*
TODO:
  - Animate Open Drawer icon

*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  String currentCounter = "New Counter";
  final Map<String, int> counters = {
    "New Counter": 0,
    "Counter #2": 21,
  };

  changeCounter(String counterName) {
    _scaffoldKey.currentState!.openEndDrawer();
    setState(() {
      currentCounter = counterName;
    });
  }

  _incrementCounter() {
    setState(() {
      counters[currentCounter] = counters[currentCounter]! + 1;
    });
  }

  _decrementCounter() {
    setState(() {
      counters[currentCounter] = counters[currentCounter]! - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentCounter),
        leading: IconButton(
          tooltip: "List Counters",
          icon: const Icon(FontAwesomeIcons.bars),
          onPressed: () {
            if (_scaffoldKey.currentState!.isDrawerOpen) {
              _scaffoldKey.currentState!.openEndDrawer();
            } else {
              _scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        actions: [
          IconButton(
            tooltip: "Reset Counter",
            icon: const Icon(FontAwesomeIcons.rotateRight),
            onPressed: () {},
          ),
          IconButton(
            tooltip: "Edit Counter",
            icon: const Icon(FontAwesomeIcons.pencil),
            onPressed: () {},
          ),
          IconButton(
            tooltip: "Settings",
            icon: const Icon(FontAwesomeIcons.gear),
            onPressed: () {},
          ),
        ],
      ),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(counters: counters, changeCounter: changeCounter),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  counters[currentCounter].toString(),
                  textScaleFactor: 10,
                ),
              ),
            ),
            Container(
              height: 130,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                child: const Icon(
                  FontAwesomeIcons.plus,
                  size: 60,
                ),
                onPressed: _incrementCounter,
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: ElevatedButton(
                child: const Icon(
                  FontAwesomeIcons.minus,
                  size: 60,
                ),
                onPressed: _decrementCounter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
