import 'dart:convert';

import 'package:cours_florian/services/providers/provider.dart';
import 'package:cours_florian/webservices/webservice_user.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends UserProvider {
  @override
  Future<List<WebServiceUser>> getAllUsers() async {
    try {
      http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        return (json as List<dynamic>).map((user) => WebServiceUser.fromJson(user as Map<String, dynamic>)).toList();
      }

      switch (response.statusCode) {
        case 404:
          throw UsersNotFoundException();
        default:
          throw NetworkException();
      }
    } catch (error) {
      print(error);
      throw NetworkException();
    }
  }
}

class LinformeException implements Exception {}

class UsersNotFoundException implements LinformeException {}

class NetworkException implements LinformeException {}
