import 'package:flutter/material.dart';
import 'package:module_b_101/data/models/hdst_model.dart';
import 'package:module_b_101/data/repositories/hdst_repository.dart';

final homeProvider = HomeProvider();

class HomeProvider extends ChangeNotifier {
  final hdstRepository = HdstRepository();

  final List<HdstModel> randomFiveHdst = [];

  void loadRandomFiveHdst() async {
    randomFiveHdst.addAll(await hdstRepository.getRandomFiveHdst());
    notifyListeners();
  }
}
