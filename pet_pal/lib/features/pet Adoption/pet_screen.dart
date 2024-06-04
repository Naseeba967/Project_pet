import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_pal/features/pet%20Adoption/pet_controller.dart';
import 'package:pet_pal/features/pet%20Adoption/pet_profile_screen.dart';
import 'package:pet_pal/model/pet.dart';

class PetSearchScreen extends StatelessWidget {


   PetSearchScreen({super.key});
  final PetSearchController controller = Get.put(PetSearchController());

  final List<String> breeds = ['All', 'Labrador', 'Poodle', 'Bulldog'];
  final List<String> sizes = ['All', 'Small', 'Medium', 'Large'];
  final List<String> ages = ['All', 'Puppy', 'Adult', 'Senior'];
  final List<String> temperaments = ['All', 'Calm', 'Energetic', 'Playful'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  value: controller.breed.value.isEmpty
                      ? 'All'
                      : controller.breed.value,
                  onChanged: (value) => controller.breed.value = value ?? 'All',
                  items: breeds.map((String breed) {
                    return DropdownMenuItem<String>(
                      value: breed,
                      child: Text(breed),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Breed'),
                ),
                DropdownButtonFormField<String>(
                  value: controller.size.value.isEmpty
                      ? 'All'
                      : controller.size.value,
                  onChanged: (value) => controller.size.value = value ?? 'All',
                  items: sizes.map((String size) {
                    return DropdownMenuItem<String>(
                      value: size,
                      child: Text(size),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Size'),
                ),
                DropdownButtonFormField<String>(
                  value: controller.age.value.isEmpty
                      ? 'All'
                      : controller.age.value,
                  onChanged: (value) => controller.age.value = value ?? 'All',
                  items: ages.map((String age) {
                    return DropdownMenuItem<String>(
                      value: age,
                      child: Text(age),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Age'),
                ),
                DropdownButtonFormField<String>(
                  value: controller.temperament.value.isEmpty
                      ? 'All'
                      : controller.temperament.value,
                  onChanged: (value) =>
                      controller.temperament.value = value ?? 'All',
                  items: temperaments.map((String temperament) {
                    return DropdownMenuItem<String>(
                      value: temperament,
                      child: Text(temperament),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Temperament'),
                ),
                TextField(
                  onChanged: (value) => controller.location.value = value,
                  decoration: const InputDecoration(labelText: 'Location'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => controller.fetchPets(),
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (controller.searchResults.isEmpty) {
                return const Center(child: Text('No pets found'));
              }
              return ListView.builder(
                itemCount: controller.allPets.length,
                itemBuilder: (context, index) {
                  Pet pet = controller.pets[index];
                  return ListTile(
                    leading: Image.asset(pet.photos.toString()),
                    title: Text(pet.name),
                    subtitle: Text('${pet.breed}, ${pet.age} years old'),
                    onTap: () {
                      Get.to(() => PetDetailScreen(pet: pet));
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
