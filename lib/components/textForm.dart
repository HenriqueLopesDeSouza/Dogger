import 'package:flutter/material.dart';

class TextFormPadrao extends StatelessWidget {

  final String texto;
  final bool criptografar;

  const TextFormPadrao(this.texto, this.criptografar);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      obscureText: criptografar,
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );
  }
}
