import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LabelField extends StatelessWidget {
  const LabelField({
    super.key,
    required this.label,
    this.actions,
    required this.child,
  });

  final String label;
  final List<Widget>? actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            ...?actions,
          ],
        ),
        Gap(4),
        child,
      ],
    );
  }
}
