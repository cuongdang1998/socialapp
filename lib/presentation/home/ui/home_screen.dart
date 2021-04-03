import 'package:flutter/material.dart';
import 'package:social_app/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.current.title("Hoang")),
      ),
    );
  }
}
