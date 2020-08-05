import 'dart:math';
import 'package:flutter/material.dart';

Random random = Random();

class RandomColor{
  Color generationColor() =>Color(0xFF000000 + random.nextInt(0x00FFFFFF));
}