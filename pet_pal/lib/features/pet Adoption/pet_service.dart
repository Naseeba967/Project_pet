import 'package:http/http.dart' as http;
import 'package:pet_pal/image_strings.dart';


class PetService {
  static String apiUrl = AppImage.goldenRetriver;

  static Future<http.Response> searchPets({
    required String breed,
    required String size,
    required String age,
    required String temperament,
    required String location,
  }) {
    final response = http.get(
      Uri.parse(apiUrl).replace(queryParameters: {
        'breed': breed,
        'size': size,
        'age': age,
        'temperament': temperament,
        'location': location,
      }),
    );

    return response;
  }
}
