import 'package:flutter/material.dart';

class StandbyPage extends StatefulWidget {
  const StandbyPage({super.key});

  @override
  State<StandbyPage> createState() => _StandbyPageState();
}

class _StandbyPageState extends State<StandbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Settings"),
        ),
        body: const Center(
          child: Text("Settings"),
        ));
  }
}
