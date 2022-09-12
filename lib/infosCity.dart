import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfosCity extends StatelessWidget {
  const InfosCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          // alignment: Alignment.topLeft,
          // width: 200,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage("images/people_talking.png")
            ),
          // child: Image.asset("images/people_talking.png")
          ),
        ),
      )
    );
  }
}
