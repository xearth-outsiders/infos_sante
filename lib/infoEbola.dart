import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ebola extends StatelessWidget {
  const Ebola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conseils sur Ebola", 
          style: TextStyle(
            color: Colors.black)
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("01"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Alright, but what exactly do\nyou do?", 
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500, 
                        fontSize: 18
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black
                      ),
                      child: Center(
                        child: const Icon(Icons.add, color: Colors.white,),
                        ),
                      )
                  ],
                ),
                SizedBox(height: 15),
                Text("Timperdier gravida scelerisque odio nunc.Eger felis, odio bibendum quis eget sit lorem donec dam. Volutpat sed onci turpis sit dolor est a pretium eget. Vitae turpis orci vel telius cursus lorem vestibulum quis eu. Ut commodo, eget lorem venenacis uma.",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w300, 
                    fontSize: 14
                  )
                )
              ],
            ),
          )
        ],
      ) 
      
    );
  }
}