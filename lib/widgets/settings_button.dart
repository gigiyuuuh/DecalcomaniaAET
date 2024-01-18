// settings_button.dart

import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SettingsButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: onPressed,
    );
  }
}
