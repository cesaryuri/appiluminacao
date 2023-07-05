import 'package:appiluminacao/pages/card_listtile.dart';
import 'package:appiluminacao/services/api_service.dart';
import 'package:flutter/material.dart';

class ControleMonitoramentoPage extends StatefulWidget {
  ControleMonitoramentoPage({super.key, required this.propertiesLights});
  Map<dynamic, dynamic> propertiesLights;
  @override
  State<ControleMonitoramentoPage> createState() =>
      _ControleMonitoramentoPageState();
}

class _ControleMonitoramentoPageState extends State<ControleMonitoramentoPage> {
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    widget.propertiesLights['status'] =
        widget.propertiesLights['status'] == 1 ? true : false;
  }

  void toggleLigado() {
    setState(() {
      widget.propertiesLights['status'] = !widget.propertiesLights['status'];
      Map<String, dynamic> updateMap = {
        'intensity': widget.propertiesLights['intensity'],
        'status': widget.propertiesLights['status']
      };
      apiService.updateLight(updateMap, widget.propertiesLights['id']);
    });
  }

  void updateIntensidade(double value) {
    setState(() {
      widget.propertiesLights['intensity'] = value;
      Map<String, dynamic> updateMap = {
        'intensity': widget.propertiesLights['intensity'],
        'status': widget.propertiesLights['status']
      };
      apiService.updateLight(updateMap, widget.propertiesLights['id']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Controle e Monitoramento'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return const ListCards();
                },
              ), (route) => false);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Detalhes do Sistema de Iluminação',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
                'Status: ${widget.propertiesLights['status'] ? 'Ligado' : 'Desligado'}'),
            Text(
                'Intensidade: ${(widget.propertiesLights['intensity'] * 100).toStringAsFixed(0)}%'),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: toggleLigado,
                  child: Text(widget.propertiesLights['status'] == 1
                      ? 'Desligar'
                      : 'Ligar'),
                ),
                const SizedBox(width: 20),
                Slider(
                  value: double.parse(
                      widget.propertiesLights['intensity'].toString()),
                  min: 0.0,
                  max: 1.0,
                  onChangeEnd: updateIntensidade,
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
