import 'package:flutter/material.dart';
import 'package:module_b_101/presentation/screens/home_screen.dart';
import 'package:module_b_101/presentation/screens/hundred_years_store_screen.dart';
import 'package:module_b_101/presentation/screens/like_screen.dart';
import 'package:module_b_101/presentation/screens/search_screen.dart';
import 'package:module_b_101/presentation/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    HundredYearsStoreScreen(),
    SearchScreen(),
    LikeScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.star_outlined), label: '백년가게'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined), label: '좋아요'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: '설정'),
        ],
      ),
    );
  }
}
