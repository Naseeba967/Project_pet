

class Pet {
  final String id;
  final String name;
  final String breed;
  final String size; // (e.g., Small, Medium, Large)
  final int age;
  final String temperament; // (e.g., Playful, Friendly, Calm)
  final String description;
  final List<String> photos;
  final String contactInfo; // Shelter/owner contact details (email, phone)
  final bool isFavorite;
  final bool isAvailable;
 

  Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.size,
    required this.age,
    required this.temperament,
    required this.description,
    required this.photos,
    required this.contactInfo,
    this.isFavorite = false,
      this.isAvailable= false, required location,
    
  });
factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'],
      name: json['name'],
      breed: json['breed'],
      size: json['size'],
      age: json['age'],
      temperament: json['temperament'],
      location: json['location'],
      description: json['description'],
      photos: json['photos'], contactInfo: json['contactinfo'], 
    );
  }
  Pet copyWith({
    String? id,
    String? name,
    String? breed,
    String? size,
    int? age,
    String? temperament,
    String? description,
    List<String>? photos,
    String? contactInfo,
    bool? isFavorite,
  }) {
    return Pet(
      id: id ?? this.id,
      name: name ?? this.name,
      breed: breed ?? this.breed,
      size: size ?? this.size,
      age: age ?? this.age,
      temperament: temperament ?? this.temperament,
      description: description ?? this.description,
      photos: photos ?? this.photos,
      contactInfo: contactInfo ?? this.contactInfo,
      isFavorite: isFavorite ?? this.isFavorite, location: null,
    );
  }
}
