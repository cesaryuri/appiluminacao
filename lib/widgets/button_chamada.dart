import 'package:flutter/material.dart';

class Botaopagecham extends StatefulWidget {
  String isim;
  Widget buttonlist;
  Botaopagecham({Key? key, required this.isim, required this.buttonlist})
      : super(key: key);

  @override
  State<Botaopagecham> createState() => ButtonState();
}

class ButtonState extends State<Botaopagecham> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.buttonlist,
          ),
        );
      },
      child: Text(
        widget.isim,
      ),
    );
  }
}
