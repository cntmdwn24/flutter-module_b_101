import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:module_b_101/common/ip_address.dart';
import 'package:module_b_101/presentation/providers/home_provider.dart';
import 'package:module_b_101/presentation/widgets/custom_Industry_button.dart';
import 'package:module_b_101/presentation/widgets/custom_repsntfilenm.dart';
import 'package:module_b_101/presentation/widgets/horizontal_dashed_divider.dart';
import 'package:module_b_101/presentation/widgets/slicer_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      fontSize: 26,
                    ),
                  ),
                ), //2023년 백년가게 신청
                Container(
                  height: 320,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.circle, size: 4, color: Colors.blue),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '전국의 백년가게',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomRepsntfilenm(),
                      SizedBox(
                        height: 5,
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
                          HorizontalDashedDivider(),
                          Text(
                            'SWIPE',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          HorizontalDashedDivider(),
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
                  height: 300,
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIndustryButton(text: '건설업'),
                          CustomIndustryButton(text: '농업'),
                          CustomIndustryButton(text: '소도매업'),
                          CustomIndustryButton(text: '서비스업'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIndustryButton(text: '숙박업'),
                          CustomIndustryButton(text: '음식업'),
                          CustomIndustryButton(text: '제조업'),
                          CustomIndustryButton(text: '축산업'),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 190,
                  decoration: BoxDecoration(color: Colors.blue.shade50),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
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
                              '바로가기',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: OutlinedButton(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=VIDEO'));
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Text(
                                '홍보영상',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: OutlinedButton(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=GOODEXAMPLE'));
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Text(
                                '우수사례',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: OutlinedButton(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    'https://www.sbiz.or.kr/hdst/board/boardList.do?boardCd=FAQ'));
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Text(
                                'FAQ',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ],
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
