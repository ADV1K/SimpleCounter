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
          onPressed: () => Navigator.pop(context),
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
          CheckboxListTile(
            secondary: const SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.vibration,
                size: 25,
              ),
            ),
            title: const Text("Turn on vibration"),
            subtitle: const Text("Vibrate on value changes"),
            visualDensity: VisualDensity.compact,
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = value!;
              });
            },
          ),
          CheckboxListTile(
            secondary: const SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.phone_android,
                size: 25,
              ),
            ),
            title: const Text("Use hardware buttons"),
            subtitle: const Text("Change counter value using volume buttons"),
            visualDensity: VisualDensity.compact,
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = value!;
              });
            },
          ),
          CheckboxListTile(
            secondary: const SizedBox(
              height: double.infinity,
              child: Icon(
                FontAwesomeIcons.handMiddleFinger,
                size: 20,
              ),
            ),
            title: const Text("Tap value to increment"),
            subtitle:
                const Text("Increment a counter by tapping the current value"),
            visualDensity: VisualDensity.compact,
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = value!;
              });
            },
          ),
          const ListTile(
            leading: SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.color_lens,
                size: 25,
              ),
            ),
            title: Text("Theme"),
            subtitle: Text("Light"),
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}
