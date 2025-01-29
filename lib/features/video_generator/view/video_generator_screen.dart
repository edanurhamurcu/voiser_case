// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voiser_case/core/constants/app_colors.dart';
import 'package:voiser_case/features/video_generator/widgets/duration_widget.dart';
import 'package:voiser_case/features/video_generator/widgets/generate_btn.dart';
import 'package:voiser_case/features/video_generator/widgets/guide_widget.dart';
import 'package:voiser_case/features/video_generator/widgets/header.dart';
import 'package:voiser_case/features/video_generator/widgets/loop_widget.dart';
import 'package:voiser_case/features/video_generator/widgets/sounds_widget.dart';
import 'package:voiser_case/features/video_generator/widgets/video_size_widget.dart';

class VideoGeneratorScreen extends StatefulWidget {
  const VideoGeneratorScreen({super.key});

  @override
  State<VideoGeneratorScreen> createState() => _VideoGeneratorScreenState();
}

class _VideoGeneratorScreenState extends State<VideoGeneratorScreen> {
  String selectedDuration = '5s';
  String selectedSize = '9:21';
  bool isLoopEnabled = false;
  bool isSoundEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Divider(color: Colors.grey.withOpacity(0.2)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Describe your video:',
                    style: TextStyle(color: Colors.white70),
                  ),
                  GuideWidget(onPressed: () {}),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: 'Type here...',
                  hintStyle: TextStyle(
                      color: Colors.white24, fontWeight: FontWeight.w200),
                  fillColor: AppColors.black,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              DurationWidget(
                selectedDuration: selectedDuration,
                onDurationSelected: (duration) {
                  setState(() => selectedDuration = duration);
                },
              ),
              const SizedBox(height: 32),
              VideoSizeWidget(
                selectedSize: selectedSize,
                onSizeSelected: (size) {
                  setState(() => selectedSize = size);
                },
              ),
              const SizedBox(height: 32),
              LoopWidget(
                isEnabled: isLoopEnabled,
                onChanged: (value) {
                  setState(() => isLoopEnabled = value);
                },
              ),
              const SizedBox(height: 32),
              SoundsWidget(
                isEnabled: isSoundEnabled,
                onChanged: (value) {
                  setState(() => isSoundEnabled = value);
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GenerateBtn(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
