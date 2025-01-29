import 'package:flutter/material.dart';
import 'package:voiser_case/core/constants/app_colors.dart';

class CustomSwitchButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;
  final double width;
  final double height;

  const CustomSwitchButton({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor = const Color(0xFF875DEB),
    this.inactiveColor = const Color(0xFF202425),
    this.thumbColor = Colors.white,
    this.width = 48.0,
    this.height = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 2),
          color: value ? activeColor : inactiveColor,
          border: Border.all(
            color: value ? activeColor : activeColor,
            //width: 1,
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: value ? width - height : 0,
              top: 0,
              child: Container(
                width: height * 0.9,
                height: height * 0.9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: value ? thumbColor : AppColors.secondary,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.backgroundColor.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
