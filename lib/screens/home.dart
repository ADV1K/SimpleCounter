/*
TODO:
  - Animate Open Drawer icon

*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Counter"),
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
        drawer: const MyDrawer(),
        body: Column(
          children: [
            const Text(
              "21",
              textScaleFactor: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(FontAwesomeIcons.plus),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(FontAwesomeIcons.minus),
              style: const ButtonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
