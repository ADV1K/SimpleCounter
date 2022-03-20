import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(FontAwesomeIcons.plus),
              title: const Text(
                "Add Counter",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: const [
                  Expanded(
                    child: Text(
                      "New Counter",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Text(
                    "21",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
