import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
            height: 100,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'index $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
