import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voiser_case/core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final String? leadingIconPath;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final double height;
  final double? elevation;

  const CustomAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.leadingIconPath,
    this.actions,
    this.onLeadingPressed,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.height = kToolbarHeight + 16,
    this.elevation = 0.0,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: elevation ?? 0,
      backgroundColor: backgroundColor ?? AppColors.primary,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            if (leadingIconPath != null) ...[
              SvgPicture.asset(
                leadingIconPath!,
                height: 32,
                width: 32,
              ),
              const SizedBox(width: 12),
            ],
            if (title != null || subtitle != null)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
      actions: actions != null
          ? [
              ...actions!,
              const SizedBox(width: 16), // Sağ kenar boşluğu
            ]
          : null,
    );
  }
}
