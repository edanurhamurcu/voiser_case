import 'package:flutter/material.dart';
import 'package:voiser_case/core/widgets/custom_choice_chip.dart';

class DurationWidget extends StatelessWidget {
  final String selectedDuration;
  final ValueChanged<String> onDurationSelected;

  const DurationWidget({
    super.key,
    required this.selectedDuration,
    required this.onDurationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Video duration:',
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ['5s', '10s', '15s', '20s'].map((duration) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomChoiceChip(
                  label: duration,
                  isSelected: duration == selectedDuration,
                  onSelected: (selected) {
                    if (selected) onDurationSelected(duration);
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
