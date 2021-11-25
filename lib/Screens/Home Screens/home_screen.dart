import 'package:animation/Theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          Icon(value ? Icons.dark_mode : Icons.light_mode),
          Switch.adaptive(
            value: value,
            onChanged: (value) {
              setState(
                () {
                  this.value = value;
                  currenttheme.toggle();
                },
              );
            },
          )
        ],
      ),
    );
  }
}
