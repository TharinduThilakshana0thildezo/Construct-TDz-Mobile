import 'package:flutter/material.dart';

/// Shows a helpful icon (?) that displays help text when tapped
/// Use this on complex fields to explain what they mean
class HelpIcon extends StatelessWidget {

  const HelpIcon({
    super.key,
    required this.helpTitle,
    required this.helpText,
    this.alignment = Alignment.center,
  });
  final String helpTitle;
  final String helpText;
  final Alignment alignment;

  void _showHelpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(helpTitle),
        content: Text(helpText),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => _showHelpDialog(context),
      child: Tooltip(
        message: 'Tap for help',
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary.withAlpha(51),
          ),
          child: Center(
            child: Text(
              '?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
}

/// A wrapper for form fields that adds a help icon
class HelpableField extends StatelessWidget {

  const HelpableField({
    super.key,
    required this.label,
    required this.helpText,
    this.helpTitle,
    required this.child,
    this.required = false,
  });
  final String label;
  final String helpText;
  final String? helpTitle;
  final Widget child;
  final bool required;

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            if (required)
              const Text(
                ' *',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(width: 8),
            HelpIcon(helpTitle: helpTitle ?? label, helpText: helpText),
          ],
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
}
