import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/infoEbola.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const SizedBox(height: 175),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 20),
                height: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.green, spreadRadius: 1),
                  ],
                )
              ),
              Positioned(
                top: 0,
                bottom: 20,
                child: Image.asset("images/undraw_social_distancing.png",
                )
              )
            ],
          ),
           Container(
              margin: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "Covid-19: Distanciation sociale",
                style:
                    GoogleFonts.openSans(fontWeight: FontWeight.w300, fontSize: 16),
              )
            ),
          const SizedBox(height: 55),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              GestureDetector(
                onTap: (() => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Ebola())))
                    }),
                child: Container(
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, top: 40, bottom: 20),
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, spreadRadius: 1),
                      ],
                    )),
              ),
              Positioned(
                  top: 0,
                  bottom: 20,
                  child: Image.asset(
                    "images/undraw_medicine.png",
                    height: 271,
                    fit: BoxFit.fill,
                  )),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "Sanitaire: Conseils sur Ebola",
                style:
                    GoogleFonts.openSans(fontWeight: FontWeight.w300, fontSize: 16),
              ))
    ]));
  }
}
