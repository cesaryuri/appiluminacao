import 'package:flutter/material.dart';
import 'package:appiluminacao/models/dispositivos.dart';

class ControleMonitoramentoPage extends StatefulWidget {
  @override
  _ControleMonitoramentoPageState createState() =>
      _ControleMonitoramentoPageState();
}

class _ControleMonitoramentoPageState extends State<ControleMonitoramentoPage> {
  //final _dispositivos = [
  //Dispositivos(id: 1, name: 'Dispositivo 1', status: 55, intensidade: true),
  //];

  bool isLigado = true;
  double intensidade = 0.5;

  void toggleLigado() {
    setState(() {
      isLigado = !isLigado;
    });
  }

  void updateIntensidade(double value) {
    setState(() {
      intensidade = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle e Monitoramento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Detalhes do Sistema de Iluminação',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Status: ${isLigado ? 'Ligado' : 'Desligado'}'),
            Text('Intensidade: ${(intensidade * 100).toStringAsFixed(0)}%'),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: toggleLigado,
                  child: Text(isLigado ? 'Desligar' : 'Ligar'),
                ),
                SizedBox(width: 20),
                Slider(
                  value: intensidade,
                  min: 0.0,
                  max: 1.0,
                  onChanged: updateIntensidade,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
