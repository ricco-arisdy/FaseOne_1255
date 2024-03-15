import 'package:flutter/material.dart';
import 'package:ucppam/form1/form_widget.dart';
import 'package:ucppam/form1/foter_widget.dart';
import 'package:ucppam/form1/header_form.dart';
import 'package:ucppam/form1/screen1_form.dart';

class formsatu extends StatelessWidget {
  const formsatu({super.key});

  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var password = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              HeaderWidget(),
              FormWidget(
                etEmail: email,
                etPassword: password,
                formKey: formKey,
                etNama: TextEditingController(),
                etNomorTelepon: TextEditingController(),
                etAlamat: TextEditingController(),
              ),
              FooterWidget(
                onPresssedLogin: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(email: email.text),
                        ),
                        (route) => false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Berikut Hasil Submit"),
                      ),
                    );
                  }
                },
                onPresssedRegister: () {},
                onPressedRegister: () {},
                onPressedLogin: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}