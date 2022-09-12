import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/widgets/detailsNews.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80,),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.only(top: 5, right: 120, left: 120),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: const [
                DetailsNews(img: "images/promotion.png", title: "Rumeurs"),
                DetailsNews(img: "images/doctor.png", title: "Infox"),
                DetailsNews(img: "images/woman.png", title: "Mécontentement"),
                DetailsNews(img: "images/sneezing.png", title: "Cas de maladie"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
