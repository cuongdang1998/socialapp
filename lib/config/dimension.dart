import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dimension {
  static final Dimension _dimension = Dimension._internal();

  factory Dimension() {
    return _dimension;
  }

  Dimension._internal();

  EdgeInsets get paddingAll => const EdgeInsets.all(20);
}
