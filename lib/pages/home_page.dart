import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = '';
  void _onPressed(name) {
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        IconButton(
          onPressed: () => _onPressed("Home 1"),
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () => _onPressed("Home 2"),
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () => _onPressed("Home 3"),
          icon: const Icon(Icons.home),
        ),
      ],
      body: Center(
        child: Text(_name),
      ),
    );
  }
}
