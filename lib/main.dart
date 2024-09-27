import 'package:cosmart/pages/_layout.dart';
import 'package:flutter/material.dart';
import 'package:cosmart/components/colorscheme.dart';

void main() {
  runApp(const COSmart());
}

class COSmart extends StatelessWidget {
  const COSmart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LayoutPage(),
      theme: cosmartDarkTheme,
    );
  }
}
