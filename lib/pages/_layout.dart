import 'package:cosmart/pages/home_page.dart';
import 'package:cosmart/pages/graphs_view.dart';
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
  final List _pages = [
    const HomePage(),
    const GraphView(),
    const StandbyPage()
  ];
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
          backgroundColor: Colors.transparent,
          color: Theme.of(context).primaryColor,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          index: currentIndex,
          onTap: _updateNavigation,
          items: const [
            Icon(Icons.dashboard_rounded),
            Icon(Icons.auto_graph),
            Icon(Icons.settings)
          ]),
    );
  }
}
