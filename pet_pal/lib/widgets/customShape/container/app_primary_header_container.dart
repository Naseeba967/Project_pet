
import 'package:flutter/material.dart';
import 'package:pet_pal/utils/constant/colors.dart';
import 'package:pet_pal/widgets/customShape/container/circular_container.dart';
import 'package:pet_pal/widgets/customShape/curvedEdge/curved_edge_widget.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidgets(
      child: Container(
        color: AppColor.mainColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -250,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColor.textwhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: AppColor.textwhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
