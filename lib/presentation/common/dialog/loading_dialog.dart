import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/config/navigation_util.dart';

class LoadingDialog {
  static void hideLoadingDialog() {
    Navigator.of(NavigationUtil.currentContext).pop();
  }

  static void showLoadingDialog(BuildContext context) {
    final alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 15), child: const Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
