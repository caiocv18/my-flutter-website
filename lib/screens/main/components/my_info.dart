import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/my-picture1.jpg"),
            ),
            const Spacer(),
            Text("Caio Vinícius",
                style: Theme.of(context).textTheme.titleSmall),
            const Text(
                "Software Developer - Back-end and Mobile - Java | Kotlin | Flutter | Spring",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5)),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
