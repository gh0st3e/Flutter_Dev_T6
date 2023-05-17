import 'package:dio/dio.dart';

class AuthRepository {
  Dio dio = Dio();

  AuthRepository();

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await dio.post(
        '<https://reqres.in/api/login>',
        data: {'email': email, 'password': password},
      );

      if (result.statusCode != 200) {
        return false;
      }
    } on DioError catch (e) {
      print(e.message);
      return false;
    }

    return true;
  }

// ...
}