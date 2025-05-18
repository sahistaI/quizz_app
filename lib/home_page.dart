import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_z/screen/nav_pages/nav_bookmark_page.dart';
import 'package:level_z/screen/nav_pages/nav_home_page.dart';
import 'package:level_z/screen/nav_pages/nav_leaderboard_page.dart';
import 'package:level_z/screen/nav_pages/nav_quiz_page.dart';
import 'package:level_z/screen/nav_pages/nav_setting_page.dart';
import 'package:level_z/utils/app_colors.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  List<Widget> navPages = [
    NavHomePage(),
    NavLeaderboardPage(),
    NavQuizPage(),
    NavBookmarkPage(),
    NavSettingPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[selectedIndex],
      floatingActionButton: GestureDetector(
        onTap: () => _onItemTapped(2), // Quiz Page in center
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.withOpacity(0.8),
                Colors.deepPurpleAccent.withOpacity(0.7),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(Icons.play_arrow, color: Colors.white, size: 35),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(icon: Icons.home, index: 0),
              _buildNavItem(icon: Icons.leaderboard_outlined, index: 1),
              const SizedBox(width: 40), // space for FAB
              _buildNavItem(icon: Icons.bookmark_border, index: 3),
              _buildNavItem(icon: Icons.settings_outlined, index: 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    final bool isSelected = selectedIndex == index;
    return IconButton(
      icon: Icon(
        icon,
        color: isSelected ? Colors.deepPurple : Colors.grey,
        size: isSelected ? 40 : 30,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}