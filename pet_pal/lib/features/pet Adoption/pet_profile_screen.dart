import 'package:flutter/material.dart';
import 'package:pet_pal/model/pet.dart';


class PetDetailScreen extends StatelessWidget {
  final Pet pet;

  const PetDetailScreen({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(pet.photos.toString()),
            const SizedBox(height: 10),
            Text('Breed: ${pet.breed}', style: const TextStyle(fontSize: 18)),
            Text('Size: ${pet.size}', style: const TextStyle(fontSize: 18)),
            Text('Age: ${pet.age} years', style: const TextStyle(fontSize: 18)),
            Text('Temperament: ${pet.temperament}', style: const TextStyle(fontSize: 18)),
            Text('Location: ${pet.contactInfo}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Description:', style: TextStyle(fontSize: 18)),
            Text(pet.description),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle contact shelter or pet owner
              },
              child: const Text('Contact Shelter/Owner'),
            ),
          ],
        ),
      ),
    );
  }
}
