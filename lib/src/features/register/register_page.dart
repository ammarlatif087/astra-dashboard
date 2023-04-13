import 'package:flutter/material.dart';
import 'package:astra_dashboard/src/core/constant/app_style_decoration.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: const Center(
        child: Text(
          "Coming soon",
          style: kBigHeaderStyle,
        ),
      ),
    );
  }
}
