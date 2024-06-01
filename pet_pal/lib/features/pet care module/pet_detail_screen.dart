import 'package:flutter/material.dart';
import 'package:pet_pal/model/pet_care_category.dart';
class PetCareDetailScreen extends StatelessWidget {
  final PetCareCategory category;

  const PetCareDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(category.content),
        ),
      ),
    );
  }
}
