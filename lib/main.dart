import 'package:flutter/material.dart';
import 'pages/card_listtile.dart';
import 'widgets/button_chamada.dart';

main() => runApp(AppIluminacao());

class _AppIluminacaoState extends State<AppIluminacao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagina inicial'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Botaopagecham(
              isim: "Acessar lista de dispositivos sistema",
              buttonlist: ListCards(),
            ),
            Center(
              child: Text('Versão Alfa - 0.1'),
            ),
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
