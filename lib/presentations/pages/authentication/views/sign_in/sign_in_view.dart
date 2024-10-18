import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: Color(0xFFF7F9FA),
            body: Placeholder(),
          ),
        ),
      ],
    );
  }
}