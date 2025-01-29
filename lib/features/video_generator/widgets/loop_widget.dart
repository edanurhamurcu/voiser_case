import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/widgets/custom_switch_button.dart';

class LoopWidget extends StatelessWidget {
  final bool isEnabled;
  final ValueChanged<bool> onChanged;

  const LoopWidget({
    super.key,
    required this.isEnabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "Loop: ",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset('assets/icons/interrogation.svg'),
          ],
        ),
        CustomSwitchButton(
          value: isEnabled,
          thumbColor: Colors.white,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
