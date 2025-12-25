import 'package:flutter/material.dart';

class KConstant 
{
  static const String themeModeKey = 'themeModeKey';
}

class KValue
{
  static const String keyConcepts = 'Key Concepts';
  static const String cleanUi = 'Clean Ui';
  static const String fixBugs = 'Fix Bug';
}

class KTextStyle 
{

  static const TextStyle titlePinkAccentText = TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                      );

  static const TextStyle descriptionTealText = TextStyle(
                        color: Colors.teal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0
                      );

}