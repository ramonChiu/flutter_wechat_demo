import 'package:flutter/cupertino.dart';
import 'dart:ui';

class Utils{
  Utils._();
  static final double pixelRatio = window.devicePixelRatio;
  static final double screen_w = window.physicalSize.width/pixelRatio;
  static final double screen_h = window.physicalSize.height/pixelRatio;
}

