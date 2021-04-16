import 'package:flutter/cupertino.dart';

class MessageDecoration {
  static final MessageDecoration _messageDecoration =
      MessageDecoration._internal();

  factory MessageDecoration() {
    return _messageDecoration;
  }

  MessageDecoration._internal();

  EdgeInsets get marginBottomMessage =>
      const EdgeInsets.only(bottom: 20, right: 20, left: 15);
}
