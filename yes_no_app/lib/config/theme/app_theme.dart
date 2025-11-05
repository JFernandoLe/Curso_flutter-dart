import 'package:flutter/material.dart';

const Color _customColor= Color(0x0031A15C);

const List<Color> _colorThemes=[
  _customColor,
    Colors.yellow,
     Colors.orange,
     Colors.blueAccent,
     Colors.green,
     Colors.red,
     Colors.purpleAccent

];

class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor=0
  }):assert(selectedColor>=0 && selectedColor<_colorThemes.length,'Colors must be between 0 and ${_colorThemes.length}');
  
  ThemeData theme(){
      return ThemeData(
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark
      );
    }
}