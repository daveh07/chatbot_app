import 'package:flutter/material.dart';
import '../../../config/theme/tokyo_night_theme.dart';
import '../../../shared/widgets/app_icon.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool isTyping;

  const ChatAppBar({
    super.key,
    required this.scaffoldKey,
    required this.isTyping,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: TokyoNightTheme.surfaceDark,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: TokyoNightTheme.foreground,
        ),
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      title: Row(
        children: [
          const AppIcon(size: 40),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bob Chat',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: TokyoNightTheme.foreground,
                ),
              ),
              Text(
                isTyping ? 'Typing...' : 'Online',
                style: TextStyle(
                  fontSize: 12,
                  color: isTyping
                      ? TokyoNightTheme.warning
                      : TokyoNightTheme.success,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            color: TokyoNightTheme.foreground,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
