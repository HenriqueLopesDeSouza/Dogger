import 'cardPadrao.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> cardList;

  void _removeCard(index) { 
      setState(() { 
          cardList.removeAt(index); 
      }
    );
  }

  //ver com o geucimar
  @override
  void initState(){
    super.initState();
    cardList = _getMatchCard();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            child: Stack(
              alignment: Alignment.center,
              children: cardList
            ),
          ),
        );
  }
  List<Widget> _getMatchCard() { 
    List<ImageDog> image = new List(); 
    image.add(ImageDog('assets/dog1.jpg', 10)); 
    image.add(ImageDog('assets/dog2.png', 10)); 
    image.add(ImageDog('assets/dog3.jpg', 10)); 
    image.add(ImageDog('assets/dog4.jpg', 10));
    image.add(ImageDog('assets/dog5.jpg', 10));  
    List<Widget> cardList = new List(); 
   for (int x = 0; x < 5; x++) { 
     cardList.add(
       Positioned( 
       top: image[x].margin, 
       child: Draggable( 
          onDragEnd: (drag){ 
            _removeCard(x); 
          }, 
       childWhenDragging: Container(), 
       feedback: Card( 
         elevation: 12, 
         //color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor, cards[x].blueColor), 
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
         child: Container( 
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage(image[x].imagem), alignment: Alignment.center, fit: BoxFit.cover),
           ),
            width: 240, 
            height: 300, 
            ), 
          ), 
       child: Card( 
         elevation: 12, 
         //color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor, cards[x].blueColor), 
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
         child: Container( 
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage(image[x].imagem), alignment: Alignment.center, fit: BoxFit.cover),
           ),
           width: 240, 
           height: 300, 
           //duvida pq nao vai com raisedBu
           child: FlatButton(
                child: Text(
                  " ",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.pushNamed(context,'/homePerfil');
                },
              ),
          ), 
         ), 
       ), 
     )
   ); 
  } 
  return cardList;
  }
}