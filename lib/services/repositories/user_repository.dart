import 'package:cours_florian/services/providers/provider.dart';
import 'package:cours_florian/webservices/webservice_user.dart';

class UserRepository {
  final UserProvider remoteProvider;
  final UserProvider localProvider;

  UserRepository({
    required this.remoteProvider,
    required this.localProvider,
  });

  Future<List<WebServiceUser>> getAllUsers() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      throw Exception('Error');
      final users = await remoteProvider.getAllUsers();
      return users;
    } catch (e) {
      rethrow;
    }
  }
}
