import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/pet%20care%20module/pet_care_screen_tip.dart';
import 'package:pet_pal/image_strings.dart';
import 'package:pet_pal/utils/constant/colors.dart';
import 'package:pet_pal/utils/constant/sizes.dart';
import 'package:pet_pal/widgets/appbar/appbar.dart';
import 'package:pet_pal/widgets/appbar/tab_bar.dart';
import 'package:pet_pal/widgets/customShape/container/search_container.dart';

import '../../utils/helpers/helpers_function.dart';
import 'consultant_screen.dart';

class PetCareScreen extends StatelessWidget {
  const PetCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: Appbar(
          title: Text(
            'Pet  Care Screen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            IconButton(onPressed: (){
               Get.to(()=>const PetCareTipScreen());  

            }, icon: const Icon(Icons.light, color :Colors.yellow)),
                IconButton(onPressed: (){
               
        Get.to(()=>const PetConsultantScreen());
                }, icon: const Icon(Icons.medical_services))
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: HelpersFunction.isDarkMode(context)
                        ? AppColor.black
                        : AppColor.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(Sizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          SizedBox(
                            height: Sizes.spaceBtwItem,
                          ),
                          SearchContainer(
                            text: "Search in Store",
                            showBoder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          // const SizedBox(
                          //   height: Sizes.spaceBtwSection,
                          // ),
                          // Text("hsahbsahb")
                        ],
                      ),
                    ),
                    bottom: const Tabbar(
                      tabs: [
                        Tab(
                          child: Text('Cat'),
                        ),
                        Tab(
                          child: Text('Dog'),
                        ),
                        Tab(
                          child: Text('Other'),
                        ),
                      ],
                    ))
              ];
            },
            body: TabBarView(children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(AppImage
                          .defaultImage), // Replace with actual consultant image (optional)
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "petConsultantName",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const Text("petConsultantSpecialization"),
                    const SizedBox(height: 20.0),
                    // Additional profile details (optional): contact info, bio, etc.
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
