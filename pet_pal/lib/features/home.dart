import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/pet%20Adoption/pet_profile_screen.dart';
import 'package:pet_pal/features/pet%20care%20module/pet_image_detail.dart';
import 'package:pet_pal/image_strings.dart';

import 'package:pet_pal/model/pet.dart';
import 'package:pet_pal/model/pet_care_category.dart';
import 'package:pet_pal/utils/constant/colors.dart';
import 'package:pet_pal/utils/constant/sizes.dart';
import 'package:pet_pal/widgets/appbar/appbar.dart';
import 'package:pet_pal/widgets/appbar/home_appbar.dart';
import 'package:pet_pal/widgets/customShape/container/app_primary_header_container.dart';
import 'package:pet_pal/widgets/customShape/container/rounded_container.dart';
import 'package:pet_pal/widgets/customShape/container/search_container.dart';
import 'package:pet_pal/widgets/custome_drawer_widgets.dart';
import 'package:pet_pal/widgets/grid_layout.dart';
import 'package:pet_pal/widgets/images/rounded_image.dart';
import 'package:pet_pal/widgets/shadow.dart';
import 'package:pet_pal/widgets/texts/section_heading.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidgets(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppPrimaryHeaderContainer(
                child: Column(
                  children: [
                    HomeAppbar(),
                    const SizedBox(height: 16), // Consistent spacing
                    SearchContainer(
                      text: 'Find your perfect pet match!',
                      icon: Icons.search,
                      onTap: () {},
                    ),
                    const SizedBox(
                        height: Sizes.spaceBtwSection), // Consistent spacing
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(Sizes.md),
                child: SectionHeading(title: 'Popular Pets'),
              ),
              const Gridlayout()
            ],
          ),
        ));
  }
}



