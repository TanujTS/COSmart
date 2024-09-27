import 'package:cosmart/pages/_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const COSmart());
}

class COSmart extends StatelessWidget {
  const COSmart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutPage(),
    );
  }
}
