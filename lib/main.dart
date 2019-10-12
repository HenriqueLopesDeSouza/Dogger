import 'package:doglife/pages/PaginaPerfil/homePerfil.dart';
import 'package:doglife/pages/PaginaPrincipal/home.page.dart';
import 'package:doglife/pages/listaContatos/listaMatch.dart';
import 'package:doglife/pages/login.page.dart';
import 'package:doglife/pages/reset-password.page.dart';
import 'package:doglife/pages/signup.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoodDog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/resetPassword':(context) => ResetPasswordPage(),
        '/homePage': (context) => HomePage(),
        '/signupPage': (context) => SignupPage(),
        '/contatosPage':(context) => ContatosPage(),
        '/homePerfil':(context) => HomePerfil()
      },
    );
  }
}
