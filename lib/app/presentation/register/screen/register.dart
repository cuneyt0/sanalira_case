import 'package:flutter/material.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.mediumSeaGreen,
      appBar: AppBar(
        title: const Text("Register"),
      ),
    );
  }
}
