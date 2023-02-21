import 'package:flutter/material.dart';

class SliderDotes extends StatelessWidget {
  bool isActive=true;
  SliderDotes(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 10,
      width: isActive ? 10 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.red: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),);
  }
}
