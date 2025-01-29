import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:voiser_case/features/home/widgets/bottom_action_buttons.dart';
import 'package:voiser_case/features/home/widgets/empty_state_widget.dart';
import 'package:voiser_case/features/home/widgets/home_header.dart';
import 'package:voiser_case/features/video_generator/view/video_generator_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover, 
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // Header
                const HomeHeader(),

                // Main Content with Stack
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          color: Color(0xFF1C1C1E),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: MasonryGridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  final heights = [200.0, 240.0, 180.0, 220.0];
                                  final height =
                                      heights[index % heights.length];
                                  return Container(
                                    height: height,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.08),
                                          Colors.white.withOpacity(0.03),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),

                            // Empty State
                            EmptyStateWidget(
                              onAddPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const VideoGeneratorScreen(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Bottom Navigation
                      const BottomActionButtons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
