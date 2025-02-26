import 'dart:math';

import 'package:flutter/material.dart';
import 'package:module_b_101/presentation/providers/home_provider.dart';
import 'package:module_b_101/presentation/widgets/slicer_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: HdstSliverAppBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.blue.shade50,
                  child: Text(
                    '2023년 백년가게 신청',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '전국의 백년가게',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
