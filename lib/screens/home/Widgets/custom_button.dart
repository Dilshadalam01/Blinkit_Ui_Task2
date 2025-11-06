import 'package:flutter/material.dart';

class ActionItem {
  final IconData icon;
  final String label;
  const ActionItem({required this.icon, required this.label});
}

class QuickActionsBar extends StatefulWidget {
  final List<ActionItem> items;
  final int initialIndex;
  final ValueChanged<int>? onChanged;

  final Widget? trailingCircle;

  const QuickActionsBar({
    super.key,
    required this.items,
    this.initialIndex = 1,
    this.onChanged,
    this.trailingCircle,
  }) ;

  @override
  State<QuickActionsBar> createState() => _QuickActionsBarState();
}

class _QuickActionsBarState extends State<QuickActionsBar> {
  late int selected = widget.initialIndex;

  @override
  Widget build(BuildContext context) {
    const double barHeight = 64;
    const BorderRadius pill = BorderRadius.all(Radius.circular(28));

    return Row(
      children: [
        Expanded(
          child: Container(
            height: barHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: pill,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                 offset: const Offset(0, 6),
                  color: Colors.black.withValues(alpha: 0.08),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: List.generate(widget.items.length, (i) {
                final isSelected = i == selected;

                final BorderRadius radius = i == 0
                    ? const BorderRadius.horizontal(left: Radius.circular(28))
                    : (i == widget.items.length - 1
                    ? const BorderRadius.horizontal(right: Radius.circular(28))
                    : BorderRadius.zero);

                return Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: radius,
                      onTap: () {
                        setState(() => selected = i);
                        widget.onChanged?.call(i);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        curve: Curves.easeOut,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFFEDEDED)
                              : Colors.transparent,
                          borderRadius: radius,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: _ActionCell(
                          item: widget.items[i],
                          selected: isSelected,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        const SizedBox(width: 12),
        _ZomatoCircle(child: widget.trailingCircle),
      ],
    );
  }
}

class _ActionCell extends StatelessWidget {
  final ActionItem item;
  final bool selected;
  const _ActionCell({required this.item, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          item.icon,
          size: 26,
          color: Colors.black87,
        ),
        const SizedBox(width: 6),
        Text(
          item.label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
            color: Colors.black87,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _ZomatoCircle extends StatelessWidget {
  final Widget? child;
  const _ZomatoCircle({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xFFFF4351),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,

      child: child ??
          const FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'zomato ↗',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
    );
  }
}



