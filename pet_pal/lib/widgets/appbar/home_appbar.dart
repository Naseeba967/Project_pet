import 'package:flutter/material.dart';
import 'package:pet_pal/utils/constant/colors.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              'Pet Pal',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: AppColor.textwhite),
            ),
          ],
        ),
      ),
      actions: [
        InkWell(
            onTap: () {},
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ))
      ],
    );
  }
}
