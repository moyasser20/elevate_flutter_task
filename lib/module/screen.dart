import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/providers/provider.dart';
import '../widgets/container_widget.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final shoes = context.watch<ProductProvider>().shoes;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: shoes.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
