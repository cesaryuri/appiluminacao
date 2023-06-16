import 'package:flutter/material.dart';
import 'package:appiluminacao/pages/control.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ControleMonitoramentoPage()),
        );
      },
      child: Column(
        children: [
          Card(
            color: Colors.blue[200],
            shadowColor: Color.fromARGB(255, 44, 78, 233),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.add)),
              title: Text("Sistema 1"),
              subtitle: Text("Status:"),
              trailing: Icon(Icons.lightbulb_outline),
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
      ),
    );
  }
}
