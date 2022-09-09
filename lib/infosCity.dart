import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfosCity extends StatelessWidget {
  const InfosCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[200],
              image: const DecorationImage(
                image: AssetImage("images/people_talking.png")
              )
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text("Qu'est-ce qui se dit\nau quartier"),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.red
                      ),
                      child: Image.asset("images/icon-park_voice-message.png"),
                    )
                  ],
                  )
                
              ],
            )
          )
        ]
      ),
    );
  }
}
