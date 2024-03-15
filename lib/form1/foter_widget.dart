import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget(
      {super.key,
      required this.onPresssedLogin,
      required this.onPresssedRegister,
      required Null Function() onPressedRegister,
      required Null Function() onPressedLogin});

  final VoidCallback onPresssedLogin;
  final VoidCallback onPresssedRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, bottom: 25),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("SUBMIT"),
          ),
        ),
      ],
    );
  }
}