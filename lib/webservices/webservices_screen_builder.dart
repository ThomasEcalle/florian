import 'package:cours_florian/services/providers/api_provider.dart';
import 'package:cours_florian/services/repositories/user_repository.dart';
import 'package:flutter/material.dart';

import 'webservice_user.dart';

class WebServicesScreenBuilder extends StatelessWidget {
  const WebServicesScreenBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Services'),
      ),
      body: FutureBuilder(
        future: UserRepository(
          remoteProvider: ApiProvider(),
          localProvider: ApiProvider(),
        ).getAllUsers(),
        builder: (context, AsyncSnapshot<List<WebServiceUser>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
