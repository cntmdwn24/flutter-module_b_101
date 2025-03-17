import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:module_b_101/common/ip_address.dart';

import '../models/induty_model.dart';

class IndutyRepository {
  final client = Client();

  Future<List<IndutyModel>> byInduty() async {
    final response = await client.get(
      Uri.parse('https://$ipAddress:8081/api/induty'),
    );

    final json = jsonDecode(response.body);

    final indutyJsonList = json['data1']['indutyList'];

    final List<IndutyModel> indutyList = [];

    for(var indutyJson in indutyJsonList) {
      indutyList.add(IndutyModel.fromJson(indutyJson));
    }
    return indutyList;
 }
}
