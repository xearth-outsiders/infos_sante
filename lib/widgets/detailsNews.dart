import 'package:flutter/material.dart';

class DetailsNews extends StatelessWidget {
  final String img;
  final String title;
  const DetailsNews({Key? key, required this.img, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(color: Colors.green, spreadRadius: 1),
            ],
          ),
          child: Image.asset(img),
        ),
        const SizedBox(height: 15),
        Text(title)
      ],
    );
  }
}
