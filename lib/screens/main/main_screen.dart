import 'package:flutter/material.dart';
import 'package:my_flutter_website/tools/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              const Expanded(flex: 2, child: SideMenu()),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
