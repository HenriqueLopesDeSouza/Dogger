import 'package:doglife/components/botao.dart';
import 'package:doglife/components/textForm.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            //meu widget, o texto e a validação são obrigatorios
            TextFormPadrao("E-mail", false),
            SizedBox(
              height: 30,
            ),
            //meu widget
            TextFormPadrao("Senha", true),
            //meu widget
            FabricaBotaoSimples("Recuperar Senha", "/resetPassword"),
            SizedBox(
              height: 40,
            ),
            //meu widget
            FabricaBotao(
              texto: "Login",
              corTexto: "white",
              imagem: "assets/bone.png",
              route: "/homePage",
            ),
            SizedBox(
              height: 10,
            ),
            //meu widget
            FabricaBotaoSimples("Cadastre-se", "/signupPage")
          ],
        ),
      ),
    );
  }
}