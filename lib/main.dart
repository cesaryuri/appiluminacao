import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/sistemas.dart';
import 'pages/sistemastexto.dart';
import 'pages/card_listtile.dart';
import 'widgets/button_chamada.dart';

main() => runApp(AppIluminacao());

class _AppIluminacaoState extends State<AppIluminacao> {
  @override
  int indicesistema = 0;
  Widget build(BuildContext context) {
    final funcao = [
      'Inicio',
      'Sistema 1',
      'Sistema 2',
      'Sistema 3',
      'Sistema 4'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagina inicial'),
        ),
        body: Column(
          children: <Widget>[
            Sistemas(funcao[indicesistema]),
            //SistemaTexto('Sistema 1', _escolher),
            //SistemaTexto('Sistema 2', _escolher),
            //SistemaTexto('Sistema 3', _escolher),
            Botaopagecham(
                isim: "Acessar lista de dispositivos sistema",
                buttonlist: const ListCards()),
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
