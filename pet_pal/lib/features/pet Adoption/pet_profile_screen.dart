import 'package:flutter/material.dart';
import 'package:pet_pal/model/pet.dart';


class PetDetailScreen extends StatelessWidget {
  final Pet pet;

  PetDetailScreen({required this.pet});

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
            SizedBox(height: 10),
            Text('Breed: ${pet.breed}', style: TextStyle(fontSize: 18)),
            Text('Size: ${pet.size}', style: TextStyle(fontSize: 18)),
            Text('Age: ${pet.age} years', style: TextStyle(fontSize: 18)),
            Text('Temperament: ${pet.temperament}', style: TextStyle(fontSize: 18)),
            Text('Location: ${pet.contactInfo}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Description:', style: TextStyle(fontSize: 18)),
            Text(pet.description),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle contact shelter or pet owner
              },
              child: Text('Contact Shelter/Owner'),
            ),
          ],
        ),
      ),
    );
  }
}
