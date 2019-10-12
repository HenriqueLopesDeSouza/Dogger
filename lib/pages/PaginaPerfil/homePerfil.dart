import 'package:flutter/material.dart';
import '../PaginaPrincipal/cardPadrao.dart';

class HomePerfil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter tinder teste'),
    );
  }
}

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
  @override
  void initState(){
    super.initState();
    cardList = _getMatchCard();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/coracao.jpg"),
          ),
        ),
      ),
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
    image.add(ImageDog('assets/dog1.jpg', 10)); 
    image.add(ImageDog('assets/dog1.jpg', 10)); 
    image.add(ImageDog('assets/dog1.jpg', 10));
    image.add(ImageDog('assets/dog1.jpg', 10));  
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
          ), 
         ), 
       ), 
     )
   ); 
  } 
  return cardList;
  }
}