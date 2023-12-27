class Club {
  final String? id;
  final String? clubCode;
  final String? region;
  final String? logo;
  final String? name;
  final String? state;
  final String? createdAt;

  Club({
    this.id,
    this.clubCode,
    required this.region,
    this.logo,
    required this.name,
    required this.state,
    this.createdAt,
  });

  static List<Club> listFromJson(List<dynamic> json) {
    return json.map((value) => Club.fromJson(value)).toList();
  }

  factory Club.fromJson(Map<String, dynamic> json) {
    return Club(
      id: json['id'],
      clubCode: json['clubCode'],
      region: json['region'],
      logo: json['logo'],
      name: json['name'],
      state: json['state'],
      createdAt: json['createdAt'],
    );
  }
}
