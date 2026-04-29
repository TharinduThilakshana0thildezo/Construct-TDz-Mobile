import 'package:flutter/material.dart';

/// Shows a loading state with shimmer effect
/// Use this while data is loading from Firestore
class SkeletonLoader extends StatelessWidget {

  const SkeletonLoader({
    super.key,
    this.itemCount = 3,
    this.height = 100,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  });
  final int itemCount;
  final double height;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) => Padding(
        padding: padding,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
}

/// Shows a simple loading spinner with message
class LoadingState extends StatelessWidget {

  const LoadingState({super.key, this.message});
  final String? message;

  @override
  Widget build(BuildContext context) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
              ),
            ),
          ],
        ],
      ),
    );
}

/// Shows an error state with retry option
class ErrorState extends StatelessWidget {

  const ErrorState({
    super.key,
    this.message,
    this.onRetry,
    this.icon = Icons.error_outline,
  });
  final String? message;
  final VoidCallback? onRetry;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: Colors.red.withAlpha(200)),
            const SizedBox(height: 16),
            const Text(
              'Something went wrong',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            if (message != null) ...[
              const SizedBox(height: 8),
              Text(
                message!,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                ),
                textAlign: TextAlign.center,
              ),
            ],
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Try Again'),
              ),
            ],
          ],
        ),
      ),
    );
}
