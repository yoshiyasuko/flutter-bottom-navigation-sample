import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bottom_navigation_sample/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_bottom_navigation_sample/view/custom_page.dart';
import 'package:provider/provider.dart';

class HomePageView extends StatelessWidget {
  final _navigationItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.store), label: '注文一覧'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.delivery_dining), label: '配達一覧'),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
  ];
  final List<Widget> _pages = [
    CustomPage(panelColor: Colors.red, title: '注文一覧'),
    CustomPage(panelColor: Colors.lightGreen, title: '配送一覧'),
    CustomPage(panelColor: Colors.redAccent, title: '設定')
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationBarProvider>(
      create: (context) => BottomNavigationBarProvider(),
      child: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: _pages[provider.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: provider.selectedIndex,
              onTap: (index) => provider.selectedIndex = index,
              items: _navigationItems,
            ),
          );
        },
      ),
    );
  }
}
