import 'package:flutter/material.dart';

class GraphView extends StatefulWidget {
  const GraphView({super.key});

  @override
  State<GraphView> createState() => _GraphViewState();
}

class _GraphViewState extends State<GraphView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("A N A L Y T I C S",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: const Center(
          child: Text("Graphs and Analytics regarding the chiller go here."),
        ));
  }
}
