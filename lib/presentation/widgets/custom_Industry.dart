import 'package:flutter/material.dart';

class CustomIndustry extends StatelessWidget {
  final String text;

  const CustomIndustry({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 70,
        height: 90,
        child: Column(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: IconButton(
                style:
                    IconButton.styleFrom(backgroundColor: Colors.blue.shade50),
                onPressed: () {},
                icon: Icon(
                  Icons.image_outlined,
                  color: Colors.blue,
                  size: 28,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
