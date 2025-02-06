class ArtistProfile {
  final String name;
  final String email;
  final String avatarUrl;

  ArtistProfile({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  factory ArtistProfile.fromJson(Map<String, dynamic> json) {
    return ArtistProfile(
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatar_url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'avatar_url': avatarUrl,
      };
}
