import 'package:dio/dio.dart';

class DioCall {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://dart.dev',
      connectTimeout: Duration(milliseconds: 5000),
      receiveTimeout: Duration(milliseconds: 5000),
      headers: {
        'Accept': 'application/json',
      },
    ),
  );

  void fetchAlbum() async {
    try {
      final response = await dio.get(
        '/users',
        options: Options(
          headers: {
            'Authorization': 'Bearer accessToken',
          },
          // queryParameters: {
          //   'sortBy': 'createdAt',
          //   'limit': 10,
          // },
        ),
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }
}