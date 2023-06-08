import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './sistemas.dart';
import './sistemastexto.dart';

main() => runApp(AppIluminacao());

class _AppIluminacaoState extends State<AppIluminacao> {
  var indicesistema = 0;
  void _escolher() {
    setState(() {
      indicesistema++;
    });

    print(indicesistema);
  }

  @override
  Widget build(BuildContext context) {
    final funcao = [
      'Sistema 0',
      'Sistema 1',
      'Sistema 2',
      'Sistema 3',
      'Sistema 4'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controle do Sistema'),
        ),
        body: Column(
          children: <Widget>[
            Sistemas(funcao[indicesistema]),
            SistemaTexto('Sistema 1', _escolher),
            SistemaTexto('Sistema 2', _escolher),
            SistemaTexto('Sistema 3', _escolher),
          ],
        ),
      ),
    );
  }
}

class AppIluminacao extends StatefulWidget {
  _AppIluminacaoState createState() {
    return _AppIluminacaoState();
  }
}
