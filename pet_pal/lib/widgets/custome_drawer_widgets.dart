import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/pet%20%20donation/pet_donation_screen.dart';
import 'package:pet_pal/features/pet%20Adoption/chat_screen.dart';
import 'package:pet_pal/features/pet%20Adoption/pet_screen.dart';
import 'package:pet_pal/features/pet%20care%20module/pet_care_screen.dart';
import 'package:pet_pal/utils/constant/colors.dart';

import '../features/personalization/setting/setting_screen.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({super.key});

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 25),
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        backgroundColor: Colors.teal,
        child: Wrap(
          runSpacing: 10,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text(
                  "Pet Pal",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Version 1.0.1",
                  style: TextStyle(color: Colors.white),
                ),
                leading: CircleAvatar(
                  radius: 22.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "pet",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 10.0,
              endIndent: 10.0,
              thickness: 1.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() =>  PetSearchScreen());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Adoption",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  FontAwesomeIcons.paw,
                  color: AppColor.textwhite,
                ),
                // trailing: Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() => const PetDonationScreen());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Donation",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.person,
                  color: AppColor.textwhite,
                ),

                // trailing: Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() => const PetCareScreen());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Pet Care",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.health_and_safety,
                  color: AppColor.textwhite,
                ),
                // trailing: Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() => const ());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Favourite",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.favorite,
                  color: AppColor.textwhite,
                ),
                // trailing: Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                onTap: () {
                  Get.to(() => const SettingScreen());
                },

                title: const Text(
                  "Setting",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.shopping_bag,
                  color: AppColor.textwhite,
                ),
                // trailing: const Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                 Get.to(() => const ChatScreen());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Messeges",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.message,
                  color: AppColor.textwhite,
                ),
             
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  // GoogleSignIn googleSignIn = GoogleSignIn();
                  // FirebaseAuth _auth = FirebaseAuth.instance;
                  // await _auth.signOut();
                  // await googleSignIn.signOut();
                  // Get.offAll(() => WelcomeScreen());
                },
                titleAlignment: ListTileTitleAlignment.center,
                title: const Text(
                  "Logout",
                  style: TextStyle(color: AppColor.textwhite),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: AppColor.textwhite,
                ),
                // trailing: const Icon(
                //   Icons.arrow_forward,
                //   color: AppConstant.appTextColor,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
