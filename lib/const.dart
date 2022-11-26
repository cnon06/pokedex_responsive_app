import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String imgPath = "assets/images/pokeball.png";

class Const {
  Const._();

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade200;
    } else {
      return Colors.pink.shade200;
    }
  }


static TextStyle gePokeInfoDataTextStyle() {
    return TextStyle(
        color: Colors.black,
        
        fontSize: calculateFontSize(18));
  }

  static TextStyle gePokeInfotLabelTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: calculateFontSize(20));
  }

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: calculateFontSize(48));
  }

  static TextStyle getPokemonNameChipStyle() {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }

  static TextStyle getPokemonNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
  }

  static calculateFontSize(int size) {
    return ScreenUtil().orientation == Orientation.portrait
        ? size.sp
        : (size * 0.6).sp;
  }

  static getApptitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static getDefaultPadding() {
    return ScreenUtil().orientation == Orientation.portrait
        ? EdgeInsets.all(12.h)
        : EdgeInsets.all(8.w);
  }

  static double calculatePokeImgAndBallSize() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sw : 0.3.sh;
  }
}
