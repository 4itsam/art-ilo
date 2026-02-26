class Painting {
  final int id;
  final String name;
  final int artistId;
  final int styleId;
  final String imageUrl;

  Painting({
    required this.id,
    required this.name,
    required this.artistId,
    required this.styleId,
    required this.imageUrl,
  });

  factory Painting.fromJson(Map<String, dynamic> json) {
    return Painting(
      id: json["id"],
      name: json["name"],
      artistId: json["artistId"],
      styleId: json["artistId"],
      imageUrl: json["imageUrl"],
    );
  }
}
