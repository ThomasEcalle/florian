import 'dart:io';

import 'package:flutter/material.dart';

class AWidget extends StatelessWidget {
  const AWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final deviceWidth = MediaQuery.of(context).size.width;
        Platform.isIOS ? print('iOS') : print('Android');
        print('Max width: ${constraints.maxWidth}');
        print('Device width: $deviceWidth');
        if (constraints.maxWidth > 600) {
          return const Text('Large');
        } else {
          return const Text('Small');
        }
        return GestureDetector(
          child: Center(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text('Coucou'),
              ),
            ),
          ),
        );
      },
    );
  }
}
