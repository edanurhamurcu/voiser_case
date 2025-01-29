import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/constants/app_colors.dart';
import 'package:voiser_case/core/widgets/custom_icon_button.dart';

class GuideWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const GuideWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          icon: SvgPicture.asset(
            'assets/icons/guide.svg',
            height: 14,
            width: 14,
          ),
          onPressed: onPressed,
          decoration: const BoxDecoration(),
        ),
        const Text(
          'Guide',
          style: TextStyle(color: AppColors.primary),
        ),
      ],
    );
  }
}
