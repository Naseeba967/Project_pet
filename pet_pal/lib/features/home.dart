import 'package:flutter/material.dart';


import 'package:pet_pal/utils/constant/sizes.dart';

import 'package:pet_pal/widgets/appbar/home_appbar.dart';
import 'package:pet_pal/widgets/customShape/container/app_primary_header_container.dart';

import 'package:pet_pal/widgets/customShape/container/search_container.dart';
import 'package:pet_pal/widgets/custome_drawer_widgets.dart';
import 'package:pet_pal/widgets/grid_layout.dart';

import 'package:pet_pal/widgets/texts/section_heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
                    const HomeAppbar(),
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



