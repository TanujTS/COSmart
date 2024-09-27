import 'package:cosmart/pages/home_page.dart';
import 'package:cosmart/pages/performance_tracker.dart';
import 'package:cosmart/pages/standby.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int currentIndex = 0;
  final List _pages = [const HomePage(), const PerformanceTracker(), const StandbyPage()];
  void _updateNavigation(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueGrey,
          index: currentIndex,
          onTap: _updateNavigation,
          items: const [
            Icon(Icons.home),
            Icon(Icons.monitor),
            Icon(Icons.calculate)
          ]),
    );
  }
}
