import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  Widget childWidget;
  Function? onTap;
  int? height;
  int? width;

  double? borderRadius;

  CustomButton({
    required this.childWidget,
    this.onTap,
    super.key,
    this.borderRadius = 6,
    this.height = 50,
    this.width = 25,
  });

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.onTap != null) {
      return GestureDetector(
        onTap: () {
          widget.onTap!();
        },
        child: Listener(
            child: Center(
          child: widget.childWidget,
        )),
      );
    } else {
      return Listener(
          child: Center(
        child: widget.childWidget,
      ));
    }
  }
}
