import 'package:flutter/material.dart';
import 'package:appiluminacao/pages/control.dart';

class MyCard extends StatefulWidget {
  MyCard({super.key, required this.propertiesLights});
  Map<dynamic, dynamic> propertiesLights;
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.blue[200],
          shadowColor: const Color.fromARGB(255, 44, 78, 233),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: const CircleAvatar(
                child: Icon(Icons.display_settings_outlined)),
            title: Text("Sistema: ${widget.propertiesLights['id'].toString()}"),
            subtitle: Text(
                "Status: ${widget.propertiesLights['status'] == 1 ? 'ligado' : 'desligado'}"),
            trailing: Icon(
              Icons.lightbulb,
              color: widget.propertiesLights['status'] == 1
                  ? Colors.amber
                  : Colors.black,
            ),
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 31, 29, 29),
          thickness: 1,
          height: 10,
          indent: 20,
          endIndent: 20,
        )
      ],
    );
  }
}
