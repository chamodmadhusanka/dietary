import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dietary_project/screens/food_prefferences.dart';
import 'package:dietary_project/screens/food.dart';
import 'package:dietary_project/screens/home_page.dart';
import 'package:dietary_project/screens/meal_plan_page.dart';
import 'package:dietary_project/screens/set_goals.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(),
    MealPlanPage(),
    FoodPage(),
    PrefPage(),
    SetGoalsPage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: (int index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        selectedIndex: _currentIndex,
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: _currentIndex == 0 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.newspaper_outlined,
              color: _currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Meal Plan",
              style: TextStyle(
                color: _currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.fastfood,
              color: _currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Food",
              style: TextStyle(
                color: _currentIndex == 2 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.favorite,
              color: _currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Preferences",
              style: TextStyle(
                color: _currentIndex == 3 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.accessibility,
              color: _currentIndex == 4 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Set Gaols",
              style: TextStyle(
                color: _currentIndex == 4 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
