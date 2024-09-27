import 'package:cosmart/pages/_layout.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  runApp(const COSmart());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
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
