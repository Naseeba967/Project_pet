import'package:flutter/material.dart';

import '../features/pet_image_vertical.dart';
class Gridlayout extends StatelessWidget {
  const Gridlayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two pets per row
              crossAxisSpacing: 10.0, // Spacing between pet cards
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            itemBuilder: (context, index) {
              return const PetgridImage();
            }));
  }
}