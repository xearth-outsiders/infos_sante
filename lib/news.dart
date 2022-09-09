import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_sante/widgets/detailsNews.dart';
// import 'package:info_sante/widgets/gbairai.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
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
      // body: Column(
      //   children: [
      //      Container(
      //           margin: const EdgeInsets.only(top: 50),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: const[
      //               Text('Nouvelles'),
      //               SizedBox(width: 60),
      //               Text("FAQs")
      //               ],
      //             ),
      //         ),
      // const SizedBox(height: 40),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Column(
      //             children: [
      //               Container(
      //                 padding: const EdgeInsets.all(25),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.white,
      //                   boxShadow: const [
      //                     BoxShadow(
      //                       color: Colors.green, 
      //                       spreadRadius: 1),
      //                   ],
      //                 ),
      //                 child: Image.asset("images/promotion.png"),
      //               ),
      //               const SizedBox(height: 15,),
      //               const Text("Rumeurs"),
      //             ],
      //           ),
      //           SizedBox(width: 40,),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 padding: const EdgeInsets.all(25),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.white,
      //                   boxShadow: const[
      //                     BoxShadow(
      //                       color: Colors.green, 
      //                       spreadRadius: 1),
      //                     ],
      //                   ),
      //                 child: Image.asset("images/doctor.png"),
      //               ),
      //               const SizedBox(height: 15,),
      //               const Text("Infox"),
      //             ],
      //           ), 
      //         ],
      //       ),
      //       const SizedBox(height: 50,),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 padding: const EdgeInsets.all(25),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.white,
      //                   boxShadow: const [
      //                     BoxShadow(
      //                       color: Colors.green, 
      //                       spreadRadius: 1),
      //                     ],
      //                   ),
      //                 child: Image.asset("images/woman.png"),
      //               ),
      //               const SizedBox(height: 15,),
      //               const Text("Mécontentement"),
      //             ],
      //           ),
      //           SizedBox(width: 40,),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 padding: const EdgeInsets.all(25),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.white,
      //                   boxShadow: const [
      //                     BoxShadow(
      //                       color: Colors.green, 
      //                       spreadRadius: 1
      //                     ),
      //                   ],
      //                 ),
      //                 child: Image.asset("images/sneezing.png"),
      //               ),
      //               const SizedBox(height: 15,),
      //               const Text("Cas de maladie"),
      //             ],
      //           ),
                
      //       ],
      //       ),
      //   ],
      // )
    );
        
            
            
            
                
                
            // GridView.count(
            //   crossAxisCount: 2,
            //   childAspectRatio: .85,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            //   children: [
            //     Container(
            //       padding: EdgeInsets.all(10),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: Image.asset("images/promotion.png"),
            //     ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     ),
                //     child: Image.asset("images/doctor.png"),
                // ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     ),
                //     child: Image.asset("images/woman.png"),
                // ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     ),
                //     child: Image.asset("images/sneezing.png"),
                // )
          //     ],)
          
    
  }
}
