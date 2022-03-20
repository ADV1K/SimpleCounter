import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatefulWidget {
  final Map<String, int> counters;
  final Function changeCounter;

  const MyDrawer(
      {Key? key,
      required this.counters,
      required Function(String) this.changeCounter})
      : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Drawer(
        child: ListView.separated(
          itemCount: widget.counters.length + 1,
          separatorBuilder: (context, int index) {
            return index == 0 ? const Divider() : const Divider(height: 0);
          },
          itemBuilder: (context, int index) {
            return index == 0 ? headerItem() : counterItem(index);
          },
        ),
      ),
    );
  }

  Widget headerItem() {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.plus),
      title: const Text(
        "Add Counter",
        style: TextStyle(fontSize: 20),
      ),
      onTap: () {},
    );
  }

  Widget counterItem(int index) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              widget.counters.keys.elementAt(index - 1),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Text(
            widget.counters[widget.counters.keys.elementAt(index - 1)]
                .toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      onTap: () =>
          widget.changeCounter(widget.counters.keys.elementAt(index - 1)),
    );
  }
}
