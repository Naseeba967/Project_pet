import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_pal/image_strings.dart';
import 'package:pet_pal/widgets/customShape/container/rounded_container.dart';
import 'package:pet_pal/widgets/images/rounded_image.dart';

import '../utils/constant/sizes.dart';
import '../widgets/shadow.dart';
import 'pet care module/pet_image_detail.dart';

class PetgridImage extends StatelessWidget {
  const PetgridImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const PetImageDetail());
      },
      child: Container(
        padding: const EdgeInsets.all(1),
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [ShadowsStyle.vertcalProductShadoW],
            borderRadius: BorderRadius.circular(
              Sizes.productImageRadius,
            ),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: RoundedContainer(
                child: Stack(
                  children: [
                    RoundedImage(
                      imageUrl: AppImage.cat,
                      fit: BoxFit.cover,
                      height: 300,
                      width: 200,
                      applyImageRadius: true,
                    ),
                    const Positioned(
                        top: 8,
                        right: 0,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            ),
          const  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Golden Retriver'),
                SizedBox(
                  height: 5,
                ),
                Text('Age:23')
              ],
            )
          ],
        ),
      ),
    );
  }
}
