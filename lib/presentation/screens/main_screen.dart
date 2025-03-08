import 'package:flutter/material.dart';
import 'package:module_b_101/presentation/screens/hundred_years_store_screen.dart';
import 'package:module_b_101/presentation/screens/like_screen.dart';
import 'package:module_b_101/presentation/screens/search_screen.dart';
import 'package:module_b_101/presentation/screens/settings_screen.dart';

import '../providers/main_provider.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      mainProvider.addListener(updateScreen);
    });
  }

  @override
  void dispose() {
    mainProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: mainProvider.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          HundredYearsStoreScreen(),
          SearchScreen(),
          LikeScreen(),
          SettingsScreen()
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          onTap: mainProvider.changeTabIndex,
          currentIndex: mainProvider.currentTabIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 28, color: Colors.white),
          unselectedIconTheme: IconThemeData(size: 28),
          selectedLabelStyle:
              TextStyle(fontFamily: 'NotoSansKR', fontSize: 12, height: 1.5),
          unselectedLabelStyle:
              TextStyle(fontFamily: 'NotoSansKR', fontSize: 12, height: 1.5),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_tree_outlined), label: '백년가게'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: '좋아요'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정')
          ],
        ),
      ),
    );
  }
}
