import 'package:comfey/model/homemodel.dart';
import 'package:flutter/material.dart';
class Attractions extends StatefulWidget {
  const Attractions({super.key});

  @override
  State<Attractions> createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
             Expanded(
               child: ListView.separated(
                 separatorBuilder: (context, index) =>
                     const SizedBox(height: 10),
                 scrollDirection: Axis.vertical,
                 physics: const ClampingScrollPhysics(),
                 itemCount: touristAttraction.length,
                 itemBuilder: ((context, index) {
                   final tourism = touristAttraction[index];
                   return GestureDetector(
                     onTap: () {
                       // Navigator.push(
                       //   context,
                       //   MaterialPageRoute(
                       //     builder: (_) => const ProductView(),
                       //   ),
                       // );
                     },
                     child: Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: SizedBox(
                         height: 280,
                         width: 200,
                         child: Material(
                           elevation: 4,
                           borderRadius: BorderRadius.circular(15),
                           child: Container(
                             height: 100,
                             width: 200,
                             decoration: BoxDecoration(
                               borderRadius: const BorderRadius.only(
                                   topLeft: Radius.circular(15),
                                   topRight: Radius.circular(15)),
                               image: DecorationImage(
                                 image: AssetImage(
                                     "assets/${tourism.imagePaths}.png"),
                                 fit: BoxFit.fill,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   );
                 }),
               ),
             ),
                    const SizedBox(
                      height: 20,
                    ),
        ],
      ),
    );
  }
}