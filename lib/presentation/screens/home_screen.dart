import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:module_b_101/common/ip_address.dart';
import 'package:module_b_101/presentation/providers/home_provider.dart';
import 'package:module_b_101/presentation/widgets/custom_Industry_button.dart';
import 'package:module_b_101/presentation/widgets/slicer_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      homeProvider.addListener(updateScreen);
      homeProvider.loadRandomFiveHdst();
    });
  }

  @override
  void dispose() {
    homeProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
                      Row(
                        children: [
                          Icon(Icons.circle, size: 4, color: Colors.blue),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '전국의 백년가게',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 250,
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeProvider.randomFiveHdst.length,
                          itemBuilder: (context, index) {
                            final hdstModel =
                                homeProvider.randomFiveHdst[index];
                            return Column(
                              children: [
                                Image.network(
                                  'http://$ipAddress:8081/resource/img/hdst/${hdstModel.repesntFileNm}',
                                  width: MediaQuery.sizeOf(context).width - 60,
                                  height: 180,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                    height: 180,
                                    width:
                                        MediaQuery.sizeOf(context).width - 60,
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
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'SWIPE',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 15,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.circle, size: 4, color: Colors.blue),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '업종별 백년가게',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [CustomIndustryButton(text: '안녕하셈')],
                      ),
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
