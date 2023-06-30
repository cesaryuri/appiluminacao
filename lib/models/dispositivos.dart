import 'package:flutter/foundation.dart';

class Dispositivos {
  final int id;
  final String name;
  final bool status;
  final double intensidade;

  Dispositivos({
    required this.id,
    required this.name,
    required this.status,
    required this.intensidade,
  });
}
