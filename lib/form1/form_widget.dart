import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
    required this.formKey,
    required this.etNama,
    required this.etNomorTelepon,
    required this.etAlamat,
    required TextEditingController etEmail,
    required TextEditingController etPassword,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNomorTelepon;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            controller: widget.etNama,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Nama",
              hintText: "Masukkan Nama",
              prefixIcon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nama dengan benar";
              }
              if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                return "Nama hanya boleh berisi huruf";
              }
              return null;
            },
          ),
          SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: widget.etNomorTelepon,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Nomor Telepon",
              hintText: "Masukkan Nomor Telepon",
              prefixIcon: Icon(Icons.phone),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nomor telepon dengan benar";
              }
              if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                return "Nomor telepon hanya boleh berisi angka";
              }
              return null;
            },
          ),
          SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.text,
            controller: widget.etAlamat,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan Alamat",
              prefixIcon: Icon(Icons.home),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan alamat dengan benar";
              }
              return null;
            },
          ),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jenis Kelamin",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Radio<String>(
                    value: 'Laki-laki',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                  ),
                  Text('Laki-laki'),
                  Radio<String>(
                    value: 'Perempuan',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                  ),
                  Text('Perempuan'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}