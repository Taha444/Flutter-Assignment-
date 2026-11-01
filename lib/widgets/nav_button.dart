import 'package:flutter/material.dart';

/// Full-width primary button used to navigate to the next page.
class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.label,
    required this.routeName,
  });

  final String label;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => Navigator.pushNamed(context, routeName),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, size: 20),
        ],
      ),
    );
  }
}
