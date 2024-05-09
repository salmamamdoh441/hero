import 'package:flutter/material.dart';
import 'package:hero/main.dart';

class Detail extends StatefulWidget {
  int index;
  IconData heroIcon;
  List<MaterialColor> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  Detail({super.key, required this.index, required this.heroIcon});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hero'),
      ),
      body: Center(
        child: Hero(
          tag: widget.heroIcon,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: widget.colors[widget.index]
            ),
              child: Icon(widget.heroIcon),
          ),
        ),
      ),
    );
  }
}
