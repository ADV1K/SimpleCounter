import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        leading: IconButton(
          tooltip: "Go Back",
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            secondary: const SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.volume_up,
                size: 25,
              ),
            ),
            title: const Text("Turn on sounds"),
            subtitle: const Text("Play sounds when changing values"),
            visualDensity: VisualDensity.compact,
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
