import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:module_b_101/common/ip_address.dart';
import 'package:module_b_101/data/models/hdst_model.dart';

class HdstRepository {
  final client = Client();

  Future<List<HdstModel>> getRandomFiveHdst() async {
    final response = await client.get(
      Uri.parse('http://$ipAddress:8081/api/home'),
    );

    final json = jsonDecode(response.body);

    final hdstJsonList = json['data1']['hdstList'];

    final List<HdstModel> hdstList = [];

    for (var hdstJson in hdstJsonList) {
      hdstList.add(HdstModel.fromJson(hdstJson));
    }

    return hdstList;
  }
}
