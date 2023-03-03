import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("Home"),
        TextButton(
          onPressed: () {},
          child: const Text("SignUp"),
        ),
         TextButton(
          onPressed: () {},
          child: const Text("Splash"),
        )
      ],
    );
  }
}
