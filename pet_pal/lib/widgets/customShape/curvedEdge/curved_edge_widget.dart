
import 'package:flutter/material.dart';
import 'package:pet_pal/widgets/customShape/curvedEdge/custom_curved_edge.dart';
class CurvedEdgeWidgets extends StatelessWidget {
  const CurvedEdgeWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: child,
    );
  }
}