import 'package:appiluminacao/pages/control.dart';
import 'package:appiluminacao/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:appiluminacao/widgets/cardlista.dart';

class ListCards extends StatefulWidget {
  const ListCards({Key? key}) : super(key: key);

  @override
  State<ListCards> createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dispositivos"),
      ),
      body: Center(
        child: FutureBuilder(
          future: apiService.getAllligths(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<dynamic>? listLights = snapshot.data;
              return RefreshIndicator(
                child: ListView.builder(
                  itemCount: listLights!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ControleMonitoramentoPage(
                                propertiesLights: listLights[index],
                              ),
                            ),
                            (route) => false);
                      },
                      child: MyCard(
                        propertiesLights: listLights[index],
                      ),
                    );
                  },
                ),
                onRefresh: () {
                  return Future.delayed(const Duration(seconds: 1), () {
                    setState(() {});
                  });
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
