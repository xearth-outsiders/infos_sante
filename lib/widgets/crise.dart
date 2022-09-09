import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestUndraw extends StatelessWidget {
  final String title;
  const TestUndraw({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, top: 0),
        child: Text( title,
          style: GoogleFonts.openSans(fontWeight: FontWeight.w300, fontSize: 16),
        )
    );
  }
}