import 'package:elevate_flutter_task/core/Network/api_Network.dart';
import 'package:flutter/cupertino.dart';

import '../../model/show_model.dart';

class ProductProvider with ChangeNotifier{
  List<ShoeModel> _shoes = [];

  List<ShoeModel> get shoes =>  _shoes;

  Future<void> loadProducts() async{
    _shoes = await ApiNetwork.getShoes();
    notifyListeners();
  }
}