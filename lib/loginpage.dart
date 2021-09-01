import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dadospage.dart';
import 'portifolio.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPageb extends StatefulWidget {
  @override
  _LoginPagebState createState() => _LoginPagebState();
}

class _LoginPagebState extends State<LoginPageb> {
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String senha = '';
  // String tel = '';

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFAB9353)),
        backgroundColor: Color(0xFF262228),
        title: Text(
          'Login',
          style: GoogleFonts.crimsonPro(
            textStyle: TextStyle(fontSize: 28, color: Color(0xFFAB9353)),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: new Container(
                width: 190.0,
                height: 190.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "assets/images/dan3.jpeg",
                        ))),
              ),
            ),
            UserAccountsDrawerHeader(
              decoration: new BoxDecoration(color: Color(0xFF000000)),
              accountName: Text("Daniel Rodrigues",style: GoogleFonts.crimsonPro(
                    textStyle:
                        TextStyle(fontSize: 28, color: Colors.white),
                  ),),
              accountEmail: Text("dan452796@hotmail.com",style: GoogleFonts.crimsonPro(
                    textStyle:
                        TextStyle(fontSize: 24, color: Colors.white),
                  ),),

                  
              // currentAccountPicture: CircleAvatar(child: FaIcon(
              //   FontAwesomeIcons.mobileAlt,
              //   size: 28,
              //   color:Color(0xFFAB9353),
              // ),),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //     child: Icon(Icons.person_outline),
              //   )
              // ],
            ),

           
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.mobileAlt,
                size: 28,
                color:Color(0xFFAB9353),
              ),
              onTap: () async {
                var phone = "+5511977400482";
                launch("tel://$phone");
                var whatsappUrl = "https://wa.me/$phone";
                await canLaunch(whatsappUrl) ? launch(whatsappUrl) : print("",);
              },

              title: Text("WhatsApp",style: TextStyle(fontSize: 22, color: Color(0xFFAB9353),), ),
             
            ),
              ListTile(
              leading: FaIcon(
                FontAwesomeIcons.linkedinIn,
                size: 28,
                color:Color(0xFFAB9353),
              ),
              onTap: () async {
                var phone = "+5511977400482";
                launch("tel://$phone");
                var whatsappUrl = "https://www.linkedin.com/in/danielrodriguesdev/";
                await canLaunch(whatsappUrl) ? launch(whatsappUrl) : print("",);
              },

              title: Text("Linkedin",style: TextStyle(fontSize: 22, color: Color(0xFFAB9353),), ),
             
            ),
              ListTile(
              leading: FaIcon(
                FontAwesomeIcons.githubAlt,
                size: 28,
                color:Color(0xFFAB9353),
              ),
              onTap: () async {
                var phone = "+5511977400482";
                launch("tel://$phone");
                var whatsappUrl = "https://github.com/Dan0668079";
                await canLaunch(whatsappUrl) ? launch(whatsappUrl) : print("",);
              },

              title: Text("GitHub",style: TextStyle(fontSize: 22, color: Color(0xFFAB9353),), ),
             
            ),



          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Form(
            key: _formkey,
            child: Column(
              //clica em Column e clica na lampada

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/portpreto1.jpg",
                    width: 110,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Entrar",
                  style: GoogleFonts.crimsonPro(
                    textStyle:
                        TextStyle(fontSize: 42, color: Color(0xFFAB9353)),
                  ),
                ),
                SizedBox(height: 8),
                Text('Bem-vindo!',
                    style: GoogleFonts.crimsonPro(
                        textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFAB9353),
                            letterSpacing: -1.5))),

                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (22),
                  ),
                  onChanged: (String texto) {
                    email = texto;
                  },
                  validator: (String? texto) {
                    if (texto != null && texto.isNotEmpty) {
                      if (!texto.contains('@') ||
                          texto.length < 8 ||
                          !texto.contains('.com'))
                        return 'Digite um e-mail válido.';
                    } else {
                      return 'Campo Obrigatório';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: (22),
                    ),
                    fillColor: Color(0xFF262228),
                    filled: true,
                    labelStyle:
                        TextStyle(color: Color(0xFFF22259), fontSize: 18),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Color(0xFFAB9353)),
                  ),
                ),
                SizedBox(
                    //Pode ser usado com Spacer() parecido com o Expanded - espaçamento dentro do espaço disponível.
                    height:
                        15), //como se fosse um container, ele dá altura e largura.
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  onChanged: (String texto) {
                    senha = texto;
                  },
                  validator: (String? texto) {
                    if (texto != null && texto.isNotEmpty) {
                      if (texto.length < 8)
                        return 'Digite uma senha com 8 caracteres ou mais';
                    } else {
                      return 'Campo obrigatório';
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    fillColor: Color(0xFF262228),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Color(0xFFAB9353)),
                  ),
                ),
                const SizedBox(height: 15),

                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formkey.currentState?.validate() ?? false) {
                        final data = await Navigator.push(
                          context,
                          // print('Login feito!');

                          MaterialPageRoute(
                            builder: (context) => DadosPage(email, senha),
                          ),
                        );
                        print(data);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF262228),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Login',
                        style: GoogleFonts.crimsonPro(
                          textStyle:
                              TextStyle(fontSize: 24, color: Color(0xFFAB9353)),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  child: Text(""),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
