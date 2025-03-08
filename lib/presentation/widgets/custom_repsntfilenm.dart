import 'package:flutter/material.dart';

import '../../common/ip_address.dart';
import '../providers/home_provider.dart';

class CustomRepsntfilenm extends StatefulWidget {
  const CustomRepsntfilenm({super.key});

  @override
  _CustomRepsntfilenmState createState() => _CustomRepsntfilenmState();
}

class _CustomRepsntfilenmState extends State<CustomRepsntfilenm> {
  late PageController _pageController;
  final int _realPageCount = 5;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == _realPageCount + 1) {
      Future.delayed(Duration(milliseconds: 300), () {
        _pageController.jumpToPage(1);
      });
    } else if (index == 0) {
      Future.delayed(Duration(milliseconds: 300), () {
        _pageController.jumpToPage(_realPageCount);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List hdstList = homeProvider.randomFiveHdst.take(_realPageCount).toList();

    final List fullList = [
      hdstList.last,
      ...hdstList,
      hdstList.first,
    ];

    return SizedBox(
      height: 230,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: fullList.length,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) {
          final hdstModel = fullList[index];
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
              SizedBox(height: 14),
              Text(
                hdstModel.hdstNm,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
