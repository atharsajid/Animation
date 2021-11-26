import 'package:animation/Theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAnimated = false;
  double radius = 18;
  double _width = 200;
  double _height = 200;
  Color color = Colors.amber;
  sizeIncrease() {
    setState(() {
      radius = 36;
      _width = 350;
      _height = 350;
      color = Colors.orange;
    });
  }

  sizeDecrease() {
    setState(() {
      radius = 18;
      _width = 200;
      _height = 200;
      color = Colors.amber;
    });
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                if (isAnimated) {
                  sizeDecrease();
                  isAnimated = false;
                } else {
                  sizeIncrease();
                  isAnimated = true;
                }
              },
              child: AnimatedContainer(
                duration: Duration(
                  milliseconds: 400,
                ),
                curve: Curves.fastOutSlowIn,
                height: _height,
                width: _width,
                color: color,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
