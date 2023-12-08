import 'package:bharat_mandi/data/data.dart';
import 'package:bharat_mandi/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CommoditiesNotifier with ChangeNotifier {
  final CommoditiesRepo commoditiesRepo;

  bool _isLoading = false;

  set setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  bool get isLoading => _isLoading;

  CommoditiesNotifier(this.commoditiesRepo);

  Future<Responser<Commodities>> fetchCommodities() async {
    return commoditiesRepo.getCommodities();
  }
}
