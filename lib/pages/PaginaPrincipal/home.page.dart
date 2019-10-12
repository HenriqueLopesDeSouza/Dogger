import 'package:doglife/pages/PaginaPrincipal/paginaPrincipal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/user-picture.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        //botao de chats
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.chat,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {
                 Navigator.pushNamed(context,'/contatosPage')
              },
            ),
          ),
        ],
      ),
        body: new MyHomePage(),
    );
  }
}

