import 'package:cosmart/components/colorscheme.dart';
import 'package:flutter/material.dart';

class PerformanceTracker extends StatefulWidget {
  const PerformanceTracker({super.key});

  @override
  State<PerformanceTracker> createState() => _PerformanceTrackerState();
}

class _PerformanceTrackerState extends State<PerformanceTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secBackground,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Performance Tracker"),
          backgroundColor: ColorTheme.background,
        ),
        body: const Center(
          child: Text("Performance Tracker"),
        ));
  }
}
