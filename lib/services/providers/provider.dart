import 'package:cours_florian/user.dart';
import 'package:cours_florian/webservices/webservice_user.dart';

abstract class UserProvider {
  Future<List<WebServiceUser>> getAllUsers();
}
