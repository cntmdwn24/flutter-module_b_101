import 'dart:convert';
import 'package:http/http.dart';
import '../../common/ip_address.dart';
import '../models/hdst_model.dart';

class HdstindutyRepository {
  final client = Client();

  Future<List<HdstModel>> getHdst() async {
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
