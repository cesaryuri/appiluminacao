import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();
  final String baseUrl = "http://192.168.0.109:3000/";

  Future<List<dynamic>> getAllligths() async {
    final result = await dio.get("${baseUrl}getall");
    return result.data['data'];
  }
}
