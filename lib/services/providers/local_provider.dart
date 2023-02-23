import 'package:cours_florian/services/providers/provider.dart';
import 'package:cours_florian/webservices/webservice_user.dart';

class LocalProvider extends UserProvider {
  @override
  Future<List<WebServiceUser>> getAllUsers() async {
    return [];
  }
}
