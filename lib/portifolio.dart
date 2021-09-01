import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// j

class Produto {
  final String nome;
  final String picture;
  final String ferramenta;

  Produto(this.nome, this.picture, this.ferramenta);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortifolioPage(),
    );
  }
}

class PortifolioPage extends StatefulWidget {
  @override
  _PortifolioPageState createState() => _PortifolioPageState();
}

class _PortifolioPageState extends State<PortifolioPage> {
  final produtos = <Produto>[
    Produto(
      " Mototáxi",
      "assets/images/mtx.png",
      "React Native / Firebase",
    ),
    Produto(
      " Agronegócio",
      "assets/images/agro.png",
      "React Native",
    ),
    Produto(
      "Equipe",
      "assets/images/agrop.png",
      "InovaDev",
    ),
    Produto(
      " Imobiliaria",
      "assets/images/imob.png",
      "JS/CSS/HTML",
    ),
     Produto(
      "Calculadora",
      "assets/images/calcula.png",
      "HTML/CSS/JS",
    ),
    Produto(
      " Cinema",
      "assets/images/cinema.png",
      "CSS/HTML",
    ),
    Produto(
      "Ponto Turístico",
      "assets/images/pturistico.png",
      "HTML",
    ),
   
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(
          title: Text("Projetos",style: GoogleFonts.crimsonPro(
            textStyle: TextStyle(fontSize: 28, color: Color(0xFFAB9353)),
          ),),
          backgroundColor: Color(0xFF000000),
        ),
        backgroundColor: Color(0xFF262228),
        body: ListView.builder(
            itemCount: produtos.length,
            itemBuilder: (BuildContext context, int index) {
              Produto produto = produtos[index];

              return Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(16.0),
                child: Column(children: [
                  //produto.picture é o link da imagem
                  Text(produto.nome,
                      style:
                          textStyles.headline4?.copyWith(color: Colors.white,fontSize: (26),)),

                  Image.network(produto.picture, height: 256),

                  Text(
                    " ${produto.ferramenta}",
                    style: textStyles.headline5?.copyWith(color: Color(0xFFAB9353),fontSize: (20),),
                  ),
                ]),
              );
            }),
            
        bottomNavigationBar: BottomNavigationBar (backgroundColor: Color(0xFF000000), items: [
          
          BottomNavigationBarItem (
            icon: Icon(Icons.settings),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          )
        ]));
  }
}
