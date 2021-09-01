import "package:flutter/material.dart";
import 'loginpage.dart';

void main() {
  //Roda o app Flutter
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: "AulasApp", //é aonde vai aparecer o titulo do navegador
      home: LoginPageb(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, // cor queé usada em todo app
        // primaryColor: Colors.blueGrey.shade700,
       
      ),
      //é o Widget é a pagina inicial do aplicativo
    );
    return materialApp; //reursos relacionados a temas extruturas navegações,cores etc
  }
}
