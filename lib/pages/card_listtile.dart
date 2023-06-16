import 'package:flutter/material.dart';
import 'package:appiluminacao/widgets/cardlista.dart';

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
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
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
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
        ],
      ),
    );
  }
}
