import 'package:cours_florian/services/providers/api_provider.dart';
import 'package:cours_florian/services/repositories/user_repository.dart';
import 'package:flutter/material.dart';

import 'webservice_user.dart';

class WebServicesScreen extends StatefulWidget {
  const WebServicesScreen({Key? key}) : super(key: key);

  @override
  State<WebServicesScreen> createState() => _WebServicesScreenState();
}

class _WebServicesScreenState extends State<WebServicesScreen> {
  bool _isLoading = true;
  final List<WebServiceUser> _users = [];
  LinformeException? _error;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    try {
      final users = await UserRepository(
        remoteProvider: ApiProvider(),
        localProvider: ApiProvider(),
      ).getAllUsers();

      setState(() {
        _isLoading = false;
        _users.addAll(users);
      });
    } catch (error) {
      print(error);
      setState(() {
        _isLoading = false;
        _error = error as LinformeException;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Services'),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      return Center(
        child: Text(_error.toString()),
      );
    }

    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          title: Text(user.name),
          subtitle: Text(user.email),
        );
      },
    );
  }
}
