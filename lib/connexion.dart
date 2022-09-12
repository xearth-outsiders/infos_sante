import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:info_sante/fasq.dart';
import 'package:info_sante/menu.dart';
// import 'package:info_sante/news.dart';
// import 'package:info_sante/news.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 50),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      )
                    ),
                    child: Text("Connexion", style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400, 
                      fontSize: 16),
                    ),
                  ),
                  Text("Récueillir et transmetter \nles informations communautaires", style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w300, 
                    fontSize: 20)
                  ),
                  const SizedBox(height: 50,),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Identifiant',
                      )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Mot de passe',
                      )
                    ),
                  ),
                  Text("Mot de passe oublié ?", style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w300, 
                    fontSize: 14)
                  ),
                  const SizedBox(height: 25,),
                  Text("Politique de confidentialité", style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w300, 
                    fontSize: 14)
                  ),
                  const SizedBox(height: 60),
                  GestureDetector(
                    onTap: (() => {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Menu())))
                      }
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 60,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  const Color.fromARGB(248, 241, 207, 174),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Align(
                            alignment: const Alignment(0.45, -0.2),
                            child: Text("Swiper pour commencer",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w300, 
                                fontSize: 14, 
                                color:Colors.black
                              )
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(248, 239, 160, 80),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Image.asset("images/charm_chevrons-right.png")
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}