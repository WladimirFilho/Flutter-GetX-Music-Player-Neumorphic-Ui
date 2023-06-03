import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  final double padding;
  final VoidCallback onTap;

  const NeuBox({
    Key? key,
    required this.child,
    required this.onTap,
    this.padding = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
          boxShadow: [
            // darker shadows on the bottom right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),

            // lighter shadows on the top left
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
