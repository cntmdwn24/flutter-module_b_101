import 'package:flutter/material.dart';

import '../../common/ip_address.dart';
import '../providers/home_provider.dart';

class CustomRepsntfilenm extends StatelessWidget {
  const CustomRepsntfilenm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeProvider.randomFiveHdst.length,
        itemBuilder: (context, index) {
          final hdstModel = homeProvider.randomFiveHdst[index];
          return Column(
            children: [
              Image.network(
                'http://$ipAddress:8081/resource/img/hdst/${hdstModel.repesntFileNm}',
                width: MediaQuery.sizeOf(context).width - 60,
                height: 180,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 180,
                  width: MediaQuery.sizeOf(context).width - 60,
                  color: Colors.blue.shade50,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                hdstModel.hdstNm,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }
}
