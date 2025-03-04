import 'package:flutter/material.dart';

class CustomIndustryButton extends StatelessWidget {
  final String text;

  const CustomIndustryButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 100,
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.image_outlined,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
