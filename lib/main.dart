import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/connexion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("INFOS SANTE", style: GoogleFonts.pompiere(
              fontWeight: FontWeight.w400, 
              fontSize: 40)
            ),
            const SizedBox(height: 35),
            Text("Préservons l'intégrité des \n informations médicales", 
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w300, 
                fontSize: 14
              ),
            ),
            const SizedBox(height: 60),
            Image.asset("images/undraw_medicine.png"),
            const SizedBox(height: 120),
            GestureDetector(
              onTap: (() => {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Connexion())))
              }),
              child: Stack(
                children: [
                  Container(
                    height: 70,
                    width: 325,
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
                      width: 100,
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
        ),
      );
    }
  }
