import 'package:flutter/material.dart';

class CustomIndustry extends StatefulWidget {
  final int indutyIndex;
  final List<String> indutyList = [
    '건설업',
    '농업',
    '도소매업',
    '서비스업',
    '숙박업',
    '음식점업',
    '제조업',
    '축산업'
  ];

  CustomIndustry({
    super.key,
    required this.indutyIndex,
  });

  @override
  State<CustomIndustry> createState() => _CustomIndustryState();
}

class _CustomIndustryState extends State<CustomIndustry> {
  String? selectedIndustry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: InkWell(
              splashColor: Colors.blue,
              highlightColor: Colors.blue,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
