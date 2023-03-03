import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("Splash"),
        TextButton(
          onPressed: () {},
          child: const Text("SignUp"),
        ),
         TextButton(
          onPressed: () {},
          child: const Text("Home"),
        )
      ],
    );
  }
}
