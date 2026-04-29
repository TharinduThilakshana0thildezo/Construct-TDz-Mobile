import 'package:flutter/material.dart';

class EntranceAnimation extends StatefulWidget {
  const EntranceAnimation({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 500),
    this.beginOffset = const Offset(0, 0.08),
    this.scaleBegin = 0.98,
  });

  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset beginOffset;
  final double scaleBegin;

  @override
  State<EntranceAnimation> createState() => _EntranceAnimationState();
}

class AnimatedEntrance extends EntranceAnimation {
  const AnimatedEntrance({
    super.key,
    required super.child,
    super.delay,
    super.duration,
    super.beginOffset,
    super.scaleBegin,
  });
}

class _EntranceAnimationState extends State<EntranceAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic);

    Future<void>.delayed(widget.delay).then((_) {
      if (!mounted) return;
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _curve,
    child: widget.child,
    builder: (context, child) {
      final progress = _curve.value;
      return Opacity(
        opacity: progress,
        child: Transform.translate(
          offset: Offset(
            widget.beginOffset.dx * (1 - progress) * 100,
            widget.beginOffset.dy * (1 - progress) * 100,
          ),
          child: Transform.scale(
            scale: widget.scaleBegin + ((1 - widget.scaleBegin) * progress),
            child: child,
          ),
        ),
      );
    },
  );
}
