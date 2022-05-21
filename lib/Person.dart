import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final Map<String, dynamic> person;
  final Map<String, Color> _colors = {
    "nice": const Color.fromRGBO(220, 255, 220, 1.0),
    "naughty": const Color.fromRGBO(255, 220, 220, 1.0)
  };
  Person({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? color = _colors[person['status']];

    return Container(
      child: Text("${person['first']} ${person['last']}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: color, border: Border.all(color: Colors.blue, width: 2)),
    );
  }
}
