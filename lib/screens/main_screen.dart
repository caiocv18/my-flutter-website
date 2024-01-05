import 'package:flutter/material.dart';
import 'package:my_flutter_website/tools/constants.dart';

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
              Expanded(
                  flex: 2,
                  child: Drawer(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.23,
                          child: Container(
                            color: Colors.green,
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      "assets/images/my-picture1.jpg"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
