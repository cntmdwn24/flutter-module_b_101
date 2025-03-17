import 'package:flutter/material.dart';
import 'package:module_b_101/data/models/induty_model.dart';
import 'package:module_b_101/data/repositories/induty_repository.dart';

final indutyProvider = IndutyProvider();

class IndutyProvider extends ChangeNotifier {
  final indutyRepository = IndutyRepository();
  final List<IndutyModel> byInduty = [];

  void loadByInduty() async {
    byInduty.addAll(await indutyRepository.byInduty());
    notifyListeners();
  }
}
