import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: Color(0xFFF6F8F9),
            body: Placeholder(),
          ),
        ),
      ],
    );
  }
}