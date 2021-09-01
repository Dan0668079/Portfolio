import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/portifolio.dart';

class DadosPage extends StatefulWidget {
  final String email;
  final String senha;

  DadosPage(this.email, this.senha);

  @override
  _DadosPageState createState() => _DadosPageState();
}

class _DadosPageState extends State<DadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          title: Text("Dados",style: GoogleFonts.crimsonPro(
            textStyle: TextStyle(fontSize: 28, color: Color(0xFFAB9353)),
          ),),
        ),
        backgroundColor: Color(0xFF262228),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Text(
              //   widget.email,
              //   style: TextStyle(color: Color(0xFFAB9353), fontSize: 18),
              // ),
              // Text(
              //   widget.senha,
              //   style: TextStyle(color: Color(0xFFAB9353), fontSize: 16),
              // ),
              // ElevatedButton(
              //     child: Text("voltar"),
              //     onPressed: () {
              //       Navigator.pop(context, "oi!");
              //     })
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Já ');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PortifolioPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xFF262228),),
                  child: Text(
                    'Portfólio',
                    style: GoogleFonts.crimsonPro(
                      textStyle:
                          TextStyle(fontSize: 28, color: Color(0xFFAB9353)),
                    ),
                  )),
              // Container(

              //   child: Image.asset(

              //     "assets/images/eu.jpg",
              //     width: 250,
              //     height: 250,

              //   ),
              //               ),

              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Image.network(
                  "http://lounge.obviousmag.org/um_ponto_no_infinito/quem-sou-eu.jpg",
                ),
              ),
              SizedBox(height: 15),

              Container(
                child: Text("Quem Sou Eu ? ", style: GoogleFonts.crimsonPro(
                      textStyle:
                          TextStyle(fontSize: 28, color: Color(0xFFAB9353)),
                    ),),
              ),
               SizedBox(height: 20),

              Padding(

                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Text(

'''Daniel Rodrigues da Silva, estudante Front-End Mobile,

na Soul Code Academy.Formação superior em produção gráfica,

experiência profissional em acabamento gráfico editorial.
                   
Conhecimento técnico com as ferramentas:
                                        
(html/CSS/JS/React Native/ flutter).
''',
                    style: GoogleFonts.crimsonPro(
                      textStyle:
                          TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
   
              // Container(
              // height: 500,
              // width: 500,
              // child: Image.asset('assets/images/eu.jpg'),                 
                    
              //     ),
            ],
          ),
        )
        );
  }
}
