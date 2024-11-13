// lib/features/navigation/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import '../../../config/constants/app_constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      backgroundColor: theme.scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.primaryColor,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.primaryColor,
                  theme.primaryColor.withOpacity(0.8),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.chat_bubble_outline,
                  size: 48,
                  color: theme.colorScheme.onPrimary,
                ),
                const SizedBox(height: 8),
                Text(
                  AppConstants.appName,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Version ${AppConstants.version}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: theme.iconTheme.color),
            title: Text('Home', style: theme.textTheme.bodyLarge),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: theme.iconTheme.color),
            title: Text('Settings', style: theme.textTheme.bodyLarge),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushNamed(context, AppConstants.settingsRoute);
              Navigator.pushNamed(context, '/settings'); // Navigate to settings
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: theme.iconTheme.color),
            title: Text('Help', style: theme.textTheme.bodyLarge),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushNamed(context, AppConstants.helpRoute);
            },
          ),
          Divider(color: theme.dividerColor),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Version ${AppConstants.version}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.textTheme.bodySmall?.color?.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
