// lib/core/network/api_network.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../model/show_model.dart';
import '../constants/api_constants/constants.dart';
import '../constants/api_constants/end_points.dart';

abstract class ApiNetwork {
  static Future<List<ShoeModel>> getShoes() async {
    try {
      var uri = Uri.parse("${ApiConstants.baseUrl}${EndPoints.productList}");

      var response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);

        return jsonList
            .map((json) => ShoeModel.fromJson(json))
            .toList();
      } else {
        throw Exception("Failed to load products: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Error fetching products: $error");
    }
  }
}
