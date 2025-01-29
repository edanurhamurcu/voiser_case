import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voiser_case/core/constants/app_colors.dart';
import 'package:voiser_case/core/widgets/custom_icon_button.dart';

class GenerateBtn extends StatelessWidget {
  const GenerateBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
          ),
          icon: SvgPicture.asset(
            'assets/icons/group.svg',
            height: 24,
            width: 24,
          ),
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.07,
          onPressed: () {},
        ),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: CustomIconButton(
            icon: const Text(
              'Generate Video (2)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'SF Pro',
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
