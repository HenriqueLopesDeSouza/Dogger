import 'package:doglife/pages/chat/homePageChat.dart';
import 'package:flutter/material.dart';
import '../PaginaPerfil/homePerfil.dart';

class ContatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/coracao.jpg"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/dogDireita.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/dogEsquerda.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(context),
            cardItem(context),
            cardItem(context),
            cardItem(context),
            cardItem(context),
          ],
        ),
      ),
    );
  }
}

Widget cardItem(BuildContext context) {
  return FlatButton(
      child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
    
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
            title: Text("Jaimes"),
            subtitle: Text("09/05/2019 18:37"),
            trailing: Icon(Icons.more_vert),
          ),
          // Container(
          //   child: Image.asset("assets/post-picture-001.png"),
          // ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   child: Text(
          //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
          // ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.favorite),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Icon(Icons.share),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePerfil()
                        ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) =>  HomePageChat()
      ),
    );
 
  });
}
