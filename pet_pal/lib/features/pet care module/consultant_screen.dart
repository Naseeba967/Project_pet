import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PetConsultantScreen extends StatefulWidget {
  const PetConsultantScreen({super.key});

  @override
  _PetConsultantScreenState createState() => _PetConsultantScreenState();
}

class _PetConsultantScreenState extends State<PetConsultantScreen> {
  final _formKey = GlobalKey<FormState>();

  // Text field controllers for pet information
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _speclizationController = TextEditingController();
  final _descriptionController = TextEditingController();

  String _imagePath = '';
  Future<void> pickImage() async {
    // Check for platform (Android or Web)
    if (Platform.isAndroid) {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imagePath = pickedFile.path;
        });
      }
    } 
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pet Donation'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Pet image (replace with your image asset path)
                  _imagePath.isNotEmpty
                      ? (TargetPlatform.android == defaultTargetPlatform)
                          ? Image.file(
                              File(_imagePath)) // Use Image.file for Android
                          : Image.network(
                              _imagePath) // Replace with uploaded image path
                      : TextButton(
                          onPressed: pickImage,
                          child: const Text('Upload Pet Image'),
                        ),
                  const SizedBox(height: 20.0),
                  // Text fields for pet information
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name for your pet.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your pet\'s age.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _speclizationController,
                    decoration: const InputDecoration(
                      labelText: 'Speclization',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      hintText:
                          'Tell us about your \'s personality and needs.',
                    ),
                    maxLines: 5,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please provide a description of your pet.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20.0),
                  // Submit button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process pet donation form submission
                        print('Pet donation form submitted!');
                        // TODO: Implement logic to submit pet donation information
                      }
                    },
                    child: const Text('Submit  Consultant Form'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }


