import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/personalization/profile/profile_screen.dart';
import 'package:pet_pal/utils/constant/colors.dart';
import 'package:pet_pal/utils/constant/sizes.dart';
import 'package:pet_pal/widgets/appbar/appbar.dart';
import 'package:pet_pal/widgets/customShape/container/app_primary_header_container.dart';
import 'package:pet_pal/widgets/list_tile/profile_tile.dart';
import 'package:pet_pal/widgets/list_tile/setting_menu_tile.dart';
import 'package:pet_pal/widgets/texts/section_heading.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  Appbar(
                      title: Text(
                    'Account',
                    style: Theme.of(context).textTheme.headlineMedium!.apply(
                          color: AppColor.textwhite,
                        ),
                  )),
                  UserProfileTail(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItem,
                  ),
                  SettingMenuTile(
                      icon: Icons.home,
                      title: 'My Address',
                      subTitle: 'Set my  Address',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Icons.shopping_cart,
                      title: 'My pet',
                      subTitle: 'Add, remove pet ',
                      onTap: () {
                        // Get.to(() => const CartScreen());
                      }),
                  SettingMenuTile(
                      icon: FontAwesomeIcons.bagShopping,
                      title: 'My Donation',
                      subTitle: 'In progressand completed Denotion',
                      onTap: () {
                        //   Get.to(() => const OrderScreen())
                      }),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('LogOut')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
