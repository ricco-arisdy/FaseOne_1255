import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Selamat Datang Di Restoo"),
        SizedBox(height: 25),
        CircleAvatar(
          radius: 50, // Sesuaikan ukuran lingkaran sesuai kebutuhan
          backgroundImage: NetworkImage(
            "https://cdn3.vectorstock.com/i/1000x1000/46/82/resto-logo-template-design-vector-33644682.jpg",
          ),
        ),
      ],
    );
  }
}