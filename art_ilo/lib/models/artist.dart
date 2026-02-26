class Artist {
  final int id;
  final String name;
  final String years;
  final String intro;
  final String history;
  final String impact;
  final List famousPaintersIds;
  final List famouseArtistIds;
  final String famouseImageUrl;
  Artist({
    required this.id,
    required this.name,
    required this.years,
    required this.intro,
    required this.history,
    required this.impact,
    required this.famousPaintersIds,
    required this.famouseArtistIds,
    required this.famouseImageUrl,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      id: json["id"],
      name: json["name"],
      years: json["years"],
      intro: json["intro"],
      history: json["history"],
      impact: json["impact"],
      famousPaintersIds: json["famousPaintersIds"],
      famouseArtistIds: json["famouseArtistIds"],
      famouseImageUrl: json["famouseImageUrl"],
    );
  }
}
