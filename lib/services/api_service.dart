import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();
  final String baseUrl = "http://192.168.0.109:3000/";

  Future<List<dynamic>> getAllligths() async {
    final result = await dio.get("${baseUrl}getall");
    return result.data['data'];
  }

  Future<void> updateLight(Map<String, dynamic> lightData, int id) async {
    try {
      await dio.put("${baseUrl}updatelight/$id", data: lightData);
    } on DioException catch (e) {
      print(e);
    }
  }
}
