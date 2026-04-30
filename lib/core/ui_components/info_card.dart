import 'package:flutter/material.dart';

/// A reusable card that shows helpful information or tips
/// Use this to explain features to users
class InfoCard extends StatelessWidget {

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.backgroundColor,
    this.onTap,
    this.buttonLabel,
  });
  final String title;
  final String description;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) => Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
        ),
      ),
      color: backgroundColor ?? Theme.of(context).cardTheme.color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: const Color(0xFFE5A824), size: 24),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                ),
              ),
              if (buttonLabel != null) ...[
                const SizedBox(height: 12),
                SizedBox(
                  height: 32,
                  child: TextButton(
                    onPressed: onTap,
                    child: Text(buttonLabel!),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
}
