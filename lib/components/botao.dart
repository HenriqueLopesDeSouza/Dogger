import 'package:flutter/material.dart';

class FabricaBotao extends StatelessWidget {
  final String texto;
  final String corTexto;
  final String imagem;
  final String route;

  const FabricaBotao({this.texto, this.corTexto, this.imagem, this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      //BoxDecoration ajuda para fazer as bordas redondas
      decoration: BoxDecoration(
        //controla a tonalidade da cor do bootão
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFF10FF88),
            Color(0XFF00FFFF),
          ],
        ),
        //faz a curva no container
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      //SizedBox.expand faz ele tomar todo o espaço do container
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            //faz a função de alinhamento dos itens
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                texto,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                child: SizedBox(
                  child: imagem != null ? Image.asset(imagem) : null,
                  height: 28,
                  width: 28,
                ),
              )
            ],
          ),
          //direciona para a outra pagina
          onPressed: () {
            Navigator.pushNamed(context, route != null ? route : null);
          },
        ),
      ),
    );
  }
}

class FabricaBotaoSimples extends StatelessWidget {
  final String texto;
  final String route;

  const FabricaBotaoSimples(this.texto, this.route);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: FlatButton(
        child: Text(
          texto,
          textAlign: TextAlign.center,
        ),
        //direciona para a outra pagina
        onPressed: () {
          route != "voltar"? Navigator.pushNamed(context, route) : Navigator.pop(context);
        },
      ),
    );
  }
}
