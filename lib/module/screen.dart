import 'package:flutter/material.dart';

import '../core/network/api_network.dart';
import '../model/show_model.dart';
import '../widgets/container_widget.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<List<ShoeModel>>(
        future: ApiNetwork.getShoes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No shoes found."));
          }

          final shoes = snapshot.data!;

          return GridView.builder(
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
          );
        },
      ),
    );
  }
}
