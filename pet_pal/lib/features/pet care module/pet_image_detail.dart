import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_pal/utils/constant/colors.dart';
import 'package:pet_pal/utils/helpers/helpers_function.dart';
import 'package:pet_pal/widgets/appbar/appbar.dart';

import '../../image_strings.dart';

class PetImageDetail extends StatelessWidget {
  const PetImageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = HelpersFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Cat image
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage(AppImage.cat), // Replace with your cat image
                  fit: BoxFit.cover,
                ),
              ),
              child: const Appbar(
                showBackArrow: true,
              ),
            ),
            // Cat information
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Abyssinian cat',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('2 years old'),
                    Text('5 Bulvarna-Kudriavsko Street, Kyiv'),
                    Text('Maya Berkovskaya - Owner'),
                    Text('May 26, 2018'),
                  ],
                ),
              ),
            ),
            // Adoption text
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'My job requires moving to another country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter my Solo.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            // Adoption button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: AppColor.mainColor),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: const Icon(
                      Icons.favorite_outline,
                      size: 30,
                      color: AppColor.textwhite,
                    )),
                Container(
                  width: 190,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Adoption',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                        color: AppColor.textwhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
