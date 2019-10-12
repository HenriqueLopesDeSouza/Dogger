import 'package:doglife/components/botao.dart';
import 'package:doglife/components/textForm.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/profile-picture.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              //responsavel pelo botao de mais na tela, ainda tem que alterar
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color(0xFFF58524),
                      Color(0XFFF92B7F),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //meu widget
            TextFormPadrao("Nome", false),
            SizedBox(
              height: 10,
            ),
             //meu widget
            TextFormPadrao("E-mail", false),
            SizedBox(
              height: 10,
            ),
             //meu widget
            TextFormPadrao("Senha", true),
            SizedBox(
              height: 10,
            ),
           FabricaBotao(
             texto: "Cadastrar",
             corTexto: "white",
           ),
            SizedBox(
              height: 10,
            ),
            FabricaBotaoSimples("Cancelar", "voltar"),
          ],
        ),
      ),
    );
  }
}
