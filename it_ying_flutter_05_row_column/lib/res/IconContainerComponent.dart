import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon, {this.size = 32, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
