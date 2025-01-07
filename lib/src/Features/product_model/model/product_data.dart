import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:last_task_6_1/src/Features/product_model/model/product_model.dart';

class ProductData {
  Future<List<ProductModel>> getDataProduct() async {
    var response = await http.get(
      Uri.parse("https://fakestoreapi.com/products/category/electronics"),
    );
    if (response.statusCode == 200) {
      List jsonBody = json.decode(response.body);
      List<ProductModel> data =
          jsonBody.map((e) => ProductModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception('faliuer');
    }
  }
}
