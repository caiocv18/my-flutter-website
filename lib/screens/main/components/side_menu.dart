import 'package:flutter/material.dart';
import 'package:my_flutter_website/tools/constants.dart';

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
          Container(
            color: darkColor,
            child: Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence:",
                      text: "Brazil",
                    ),
                    const AreaInfoText(
                      title: "City:",
                      text: "Brasília",
                    ),
                    const AreaInfoText(
                      title: "Age:",
                      text: "23",
                    ),
                    const Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        "Skills",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: AnimatedCircularProgressIndicator(
                            percentage: 0.8,
                            label: "Java",
                          ),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                          child: AnimatedCircularProgressIndicator(
                            percentage: 0.8,
                            label: "Kotlin",
                          ),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                          child: AnimatedCircularProgressIndicator(
                            percentage: 0.8,
                            label: "Flutter",
                          ),
                        ),
                      ],
                    ),
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

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, this.title, this.text});

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          ),
        ],
      ),
    );
  }
}
