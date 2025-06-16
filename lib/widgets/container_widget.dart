import 'package:elevate_flutter_task/core/extensions/extensions.dart';
import 'package:elevate_flutter_task/model/show_model.dart';
import 'package:flutter/material.dart';

class containerWidget extends StatelessWidget {
  final ShoeModel shoeModel;
  const containerWidget({super.key, required this.shoeModel});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 6,
                  offset: const Offset(2, 2),
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        shoeModel.imageUrl,
                        height: constraints.maxHeight * 0.4,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          print("Fav clicked");
                        },
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Icon(Icons.favorite_border, color: Colors.blue, size: 24),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
                  child: Text(
                    shoeModel.name,
                    style: TextStyle(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
                  child: Text(
                    shoeModel.description,
                    style: TextStyle(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
                  child: Row(
                    children: [
                      Text(
                        shoeModel.price,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text(
                        shoeModel.oldPrice,
                        style: TextStyle(fontSize: 12, decoration: TextDecoration.lineThrough, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
                  child: Row(
                    children: [
                      Text(
                        "Review (${shoeModel.rating})",
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          print("Plus clicked");
                        },
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add, color: Colors.white, size: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ).setHorizontalAndVerticalPadding(context, 0.01, 0.01),
        );
      },
    );
  }
}
