import 'package:cours_florian/user.dart';
import 'package:cours_florian/user_item.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<User> _list = List.generate(30, (index) {
      return User(
        name: 'toto $index',
        lastName: 'tata $index',
      );
    });

    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        print('index: $index');
        return UserItem(
          user: _list[index],
        );
      },
    );
  }
}
