import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/widgets/custom_choice_chip.dart';

class VideoSizeWidget extends StatelessWidget {
  final String selectedSize;
  final ValueChanged<String> onSizeSelected;

  const VideoSizeWidget({
    super.key,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Video size :',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset('assets/icons/interrogation.svg'),
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ['9:21', '9:16', '3:4', '1:1', '4:3', '16:9', '21:9']
                .map((size) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomChoiceChip(
                  label: size,
                  isSelected: size == selectedSize,
                  onSelected: (selected) {
                    if (selected) onSizeSelected(size);
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
