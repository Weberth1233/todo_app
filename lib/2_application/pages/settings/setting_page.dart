import 'package:flutter/material.dart';
import 'package:todo_app/2_application/core/page_config.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static PageConfig pageConfig = PageConfig(
    icon: Icons.settings,
    name: 'settings',
    child: const SettingPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
