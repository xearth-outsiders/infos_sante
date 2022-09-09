import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/infoEbola.dart';
import 'package:info_sante/widgets/crise.dart';
import 'package:info_sante/widgets/stacker.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: const [
          SizedBox(height: 75),
          // ignore: prefer_const_constructors
          Stacker(img: "images/undraw_social_distancing.png"),
          TestUndraw(title: "Covid-22: Distanciation sociale"),
          SizedBox(height: 40),
          Stacker(img: "images/undraw_medicine.png"),
          TestUndraw(title: "Sanitaire: Conseils sur Ebola")
        ]
      )
    );
  }
}
