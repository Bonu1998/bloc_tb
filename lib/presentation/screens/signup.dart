import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("SignUp"),
        TextButton(
          onPressed: () {},
          child: const Text("Home"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Splash"),
        )
      ],
    );
  }
}
