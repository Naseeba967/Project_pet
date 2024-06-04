import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pet_pal/features/pet%20care%20module/pet_detail_screen.dart';
import 'package:pet_pal/model/pet_care_category.dart';

class PetCareTipScreen extends StatefulWidget {
  @override
  _PetCareTipScreenState createState() => _PetCareTipScreenState();
}

class _PetCareTipScreenState extends State<PetCareTipScreen> {
  // Sample data (replace with database or API integration)
  final List<PetCareCategory> categories = [
    PetCareCategory(
        title: 'Nutrition', content: 'Information about pet food...'),
    PetCareCategory(title: 'Grooming', content: 'Tips on bathing, brushing...'),
    PetCareCategory(
        title: 'Training', content: 'Positive reinforcement techniques...'),
    PetCareCategory(title: 'Health', content: 'Signs of illness, vet care...'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Care'),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => PetCareDetailScreen(category: category));
                },
                title: Text(category.title),
                subtitle: Text(
                    '${category.content.substring(0, category.content.length)}...'),
              ),
            );
          },
        ),
      ),
      
    );
  }
}
