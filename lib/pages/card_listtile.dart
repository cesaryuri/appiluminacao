import 'package:flutter/material.dart';

class ListCards extends StatelessWidget {
  const ListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dispositivos"),
      ),
      body: Center(
        child: ListView(
          reverse: false,
          children: [
            Column(
              children: [
                myCard(),
                myCard(),
                myCard(),
                myCard(),
                myCard(),
                myCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildScroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
        ],
      ),
    );
  }

  Column myCard() {
    return Column(
      children: [
        Card(
          color: Colors.blue[200],
          shadowColor: Color.fromARGB(255, 44, 78, 233),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ListTile(
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
    );
  }
}
