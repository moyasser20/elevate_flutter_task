import 'package:flutter/material.dart';

import '../model/show_model.dart';
import '../widgets/container_widget.dart';

class screen extends StatelessWidget {
   screen({super.key});

  final List<ShoeModel> shoes = [
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,200",
      oldPrice: "2,000 EGP",
      rating: "4.8",
    ),
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,100",
      oldPrice: "1,500 EGP",
      rating: "4.8",
    ),
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,000",
      oldPrice: "1,300 EGP",
      rating: "4.8",
    ),
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,500",
      oldPrice: "2,000 EGP",
      rating: "4.8",
    ),
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,800",
      oldPrice: "2,100 EGP",
      rating: "4.8",
    ),
    ShoeModel(
      imageUrl: "assets/images/img.png",
      name: "Nike Air Jordan",
      description: "Nike shoes flexible for women",
      price: "EGP 1,900",
      oldPrice: "2,500 EGP",
      rating: "4.8",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: shoes.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return containerWidget(shoeModel: shoes[index]);
        },
      ),
    );
  }
}
