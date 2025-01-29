import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Color iconColor;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.decoration,
    this.iconColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 36,
        height: height ?? 36,
        decoration: decoration ??
            BoxDecoration(
              color: Colors.black12.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
