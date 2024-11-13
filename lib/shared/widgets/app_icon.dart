import 'package:flutter/material.dart';
import '../../config/theme/tokyo_night_theme.dart';

class AppIcon extends StatelessWidget {
  final double size;

  const AppIcon({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: TokyoNightTheme.accent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Icon(
        Icons.nightlight_round,
        size: size / 2,
        color: TokyoNightTheme.accent,
      ),
    );
  }
}
