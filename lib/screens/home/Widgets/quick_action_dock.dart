import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollDirection;

import 'package:blinkit_ui/screens/home/Widgets/custom_button.dart';

class QuickActionsDock extends StatefulWidget {
  final ScrollController controller;
  final List<ActionItem> items;
  final ValueChanged<int>? onChanged;
  final Widget? trailingCircle;

  const QuickActionsDock({
    super.key,
    required this.controller,
    required this.items,
    this.onChanged,
    this.trailingCircle,
  });

  @override
  State<QuickActionsDock> createState() => _QuickActionsDockState();
}

class _QuickActionsDockState extends State<QuickActionsDock> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleScroll);
  }

  void _handleScroll() {
    final dir = widget.controller.position.userScrollDirection;

    bool nextVisible = _visible;
    if (dir == ScrollDirection.reverse) nextVisible = true;
    if (dir == ScrollDirection.forward) nextVisible = false;
    if (widget.controller.position.pixels <= 0) nextVisible = true;

    if (nextVisible != _visible && mounted) {
      setState(() => _visible = nextVisible);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        offset: _visible ? Offset.zero : const Offset(0, 1),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 150),
          opacity: _visible ? 1 : 0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 1),
            child: QuickActionsBar(
              items: widget.items,
              onChanged: widget.onChanged,
              trailingCircle: widget.trailingCircle,
            ),
          ),
        ),
      ),
    );
  }
}


