import 'package:cosmart/components/colorscheme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secBackground,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Overview"),
          backgroundColor: ColorTheme.background,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(index.toString()),
              title: const Text("Performance"),
            );
          },
        ));
  }
}
