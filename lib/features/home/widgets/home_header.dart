import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/widgets/custom_icon_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: [
          // Logo
          SvgPicture.asset(
            'assets/images/app_logo.svg',
            height: 32,
          ),
          const Spacer(),
          // Actions
          Row(
            children: [
              CustomIconButton(
                icon: SvgPicture.asset(
                  'assets/icons/gift.svg',
                  height: 18,
                  width: 18,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),

              // Settings Button
              CustomIconButton(
                icon: SvgPicture.asset(
                  'assets/icons/settings.svg',
                  height: 18,
                  width: 18,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),

              // Pro Button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1E),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      const Text(
                        'Pro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 6),
                      SvgPicture.asset(
                        'assets/icons/pro.svg',
                        height: 18,
                        width: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
