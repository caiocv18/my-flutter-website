import 'package:flutter/material.dart';
import 'package:my_flutter_website/tools/constants.dart';

import 'area_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: Container(
              color: darkColor,
              child: const SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence:",
                      text: "Brazil",
                    ),
                    AreaInfoText(
                      title: "City:",
                      text: "Brasília",
                    ),
                    AreaInfoText(
                      title: "Age:",
                      text: "24",
                    ),
                    Column(
                      children: [Divider()],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}