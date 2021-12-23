import 'package:dio/dio.dart';
import 'package:frazex_task/data/endpoint/endpoint.dart';
import 'package:frazex_task/data/exception/http_exception.dart';

class ApiService {
  final _dio = Dio();

  ApiService() {
    _dio.options
      ..baseUrl = "https://dummyapi.io/data/v1/"
      ..contentType = 'application/Json'
      ..headers = {
        "app-id": "61c20e86d36b5a199b553ce1",
      };
  }

  Future<dynamic> get(Endpoint endpoint) async {
    final response = await _dio.get(endpoint.route);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw HttpException(response.statusMessage ?? "Unknown Error");
    }
  }
}
