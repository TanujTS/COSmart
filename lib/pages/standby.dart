import 'package:flutter/material.dart';
import 'package:cosmart/components/colorscheme.dart';

class StandbyPage extends StatefulWidget {
  const StandbyPage({super.key});

  @override
  State<StandbyPage> createState() => _StandbyPageState();
}

class _StandbyPageState extends State<StandbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secBackground,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Settings"),
          backgroundColor: ColorTheme.background,
        ),
        body: Center(
          child: Text("Settings"),
        ));
  }
}
