import 'package:get/get.dart';
import 'package:pet_pal/features/pet%20Adoption/pet_service.dart';
import 'package:pet_pal/image_strings.dart';
import 'package:pet_pal/model/pet.dart';

class PetSearchController extends GetxController {
  final List<Pet> pets = []..obs;
  var breed = ''.obs;
  var size = ''.obs;
  var age = ''.obs;
  var temperament = ''.obs;
  var location = ''.obs;
  var searchResults = <Pet>[].obs;
  // void searchPets() async {
  //   var results = await PetService.searchPets(
  //     breed: breed.value,
  //     size: size.value,
  //     age: age.value,
  //     temperament: temperament.value,
  //     location: location.value,
  //   );
  //   searchResults.assignAll(results.toString());
  // }

  // Logic for fetching pets from a database or API (replace with your implementation)
  Future<void> fetchPets() async {
    // TODO: Implement your pet fetching logic here (e.g., using HTTP requests or a local JSON file)
    // Replace with actual data fetching
    pets.addAll([
      Pet(
        id: 'pet1',
        name: 'Buddy',
        breed: 'Golden Retriever',
        size: 'Large',
        age: 2,
        temperament: 'Playful',
        description:
            'A friendly and energetic dog who loves walks and playing fetch.',
        photos: [AppImage.goldenRetriver, AppImage.cat],
        contactInfo: 'shelter@example.com',
        isAvailable: true,
        location: 'Islambad',
      ),
      // Add more pets...
    ]);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fetchPets();
  }

  List<Pet> get allPets => pets;

  // Logic for adding pets to favorites (optional)
  void addToFavorites(Pet pet) {
    final existingIndex = pets.indexWhere((p) => p.id == pet.id);
    if (existingIndex >= 0) {
      pets[existingIndex] = pet.copyWith(isFavorite: !pet.isFavorite);
      update();
    }
  }
}
