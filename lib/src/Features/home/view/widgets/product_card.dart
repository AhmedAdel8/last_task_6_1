import 'package:flutter/material.dart';
import 'package:last_task_6_1/src/Features/product_model/model/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(productModel.image, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(productModel.description),
                SizedBox(height: 8),
                Text(
                  'Price: \$${productModel.price}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "${productModel.rating}",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star_half, color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  productModel.category,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
