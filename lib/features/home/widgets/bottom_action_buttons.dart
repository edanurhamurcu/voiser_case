import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/widgets/custom_icon_button.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Vector Button
          CustomIconButton(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .2,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(18),
            ),
            icon: SvgPicture.asset(
              'assets/icons/vector.svg',
              height: 18,
              width: 18,
            ),
            onPressed: () {},
          ),

          // Select Button
          CustomIconButton(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .2,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(18),
            ),
            icon: SvgPicture.asset(
              'assets/icons/select.svg',
              height: 18,
              width: 18,
            ),
            onPressed: () {},
          ),

          // History Button
          CustomIconButton(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(18),
            ),
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/time_past1.svg',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 8),
                const Text(
                  'History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
