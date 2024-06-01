class Shelter {
  final String name;
  final String? address;
  final String? phone;
  final String? website;

  Shelter(
      {required this.name,
      this.address,
      this.phone,
      this.website,
      required String email});
}
