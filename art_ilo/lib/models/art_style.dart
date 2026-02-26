class ArtStyle {
  final int id;
  final String name;
  final String birthDeath;
  final String childhood;
  final String peakPeriod;
  final String quote;
  final List paintingIds;
  final String impact;
  final String imageUrl;
  ArtStyle({
    required this.id,
    required this.name,
    required this.birthDeath,
    required this.childhood,
    required this.peakPeriod,
    required this.quote,
    required this.paintingIds,
    required this.impact,
    required this.imageUrl,
  });

  factory ArtStyle.fromJson(Map<String, dynamic> json) {
    return ArtStyle(
      id: json['id'],
      name: json['name'],
      birthDeath: json['birth_death'],
      childhood: json['childhood'],
      peakPeriod: json['peak_period'],
      quote: json['quote'],
      paintingIds: json['painting_ids'],
      impact: json['impact'],
      imageUrl: json['image_url'],
    );
  }
}
