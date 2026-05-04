import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(BaseOptions(baseUrl: "https://makeup-api.herokuapp.com"));
  }

  Future<List<dynamic>> getProduct() async {
    var response = await dio.get("/api/v1/products.json");

    debugPrint("response : $response");

    return response.data;
  }
}
