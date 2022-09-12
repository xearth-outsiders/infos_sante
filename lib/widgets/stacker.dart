import 'package:flutter/material.dart';

class Stacker extends StatelessWidget {
  final String img;
  const Stacker({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 20),
                height: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey, 
                      spreadRadius: 0.5),
                  ],
                )
              ),
              Positioned(
                top: 0,
                bottom: 20,
                child: Image.asset(img,
                )
              )
            ],
          );
  }
}

