import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String title;
  final String img;

  const Cards({Key? key, required this.title, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 20),
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const[BoxShadow(
              color: Colors.green,
              spreadRadius: 1
              )
            ]
          ),
          child: Column(
            children: [
              Positioned(
                top: 0,
                bottom: 20,
                child: Image.asset(img)
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, top: 0),
                child: Text(title),
              )

            ],
          ),
    );
  }
}