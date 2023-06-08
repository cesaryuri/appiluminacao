import 'package:flutter/material.dart';

class SistemaTexto extends StatelessWidget {
  final String texto;
  final void Function() botaoapertadosistex;

  SistemaTexto(this.texto, this.botaoapertadosistex);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //textStyle: Colors.black,
          backgroundColor: Colors.blueGrey[100],
          foregroundColor: Colors.black,
        ),
        onPressed: botaoapertadosistex,
        child: Text(texto),
      ),
    );
  }
}
