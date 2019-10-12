import 'package:flutter/material.dart';
//ver com o geucimar


class FabricaAppBar extends StatelessWidget {
  final IconData icone;
  final String image;
  final Color color;


  const FabricaAppBar({this.color, this.icone, this.image});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: color,
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage(image),
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
      );
  }
}
