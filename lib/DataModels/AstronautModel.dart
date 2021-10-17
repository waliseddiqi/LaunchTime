class AstronautModel {
  int?  count;
  String? next;
  String? previous;
  List<AstronautResult>? results;

  AstronautModel({this.count, this.next, this.previous, this.results});

  AstronautModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(new AstronautResult.fromJson(v));
      });
    }
  }


}

class AstronautResult {
  int?  id;
  String? url;
  String? name;
  Status? status;
  Status? type;
  String? dateOfBirth;
  String? dateOfDeath;
  String? nationality;
  String? bio;
  String? twitter;
  String? instagram;
  String? wiki;
  Agency? agency;
  String? profileImage;
  String? profileImageThumbnail;
  String? lastFlight;
  String? firstFlight;

  AstronautResult(
      {this.id,
      this.url,
      this.name,
      this.status,
      this.type,
      this.dateOfBirth,
      this.dateOfDeath,
      this.nationality,
      this.bio,
      this.twitter,
      this.instagram,
      this.wiki,
      this.agency,
      this.profileImage,
      this.profileImageThumbnail,
      this.lastFlight,
      this.firstFlight});

  AstronautResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    type = json['type'] != null ? new Status.fromJson(json['type']) : null;
    dateOfBirth = json['date_of_birth'];
    dateOfDeath = json['date_of_death'];
    nationality = json['nationality'];
    bio = json['bio'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    wiki = json['wiki'];
    agency =
        json['agency'] != null ? new Agency.fromJson(json['agency']) : null;
    profileImage = json['profile_image'];
    profileImageThumbnail = json['profile_image_thumbnail'];
    lastFlight = json['last_flight'];
    firstFlight = json['first_flight'];
  }


}

class Status {
  int?  id;
  String? name;

  Status({this.id, this.name});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Agency {
  int?  id;
  String? url;
  String? name;
  bool? featured;
  String? type;
  String? countryCode;
  String? abbrev;
  String? description;
  String? administrator;
  String? foundingYear;
  String? launchers;
  String? spacecraft;
  String? parent;
  String? imageUrl;

  Agency(
      {this.id,
      this.url,
      this.name,
      this.featured,
      this.type,
      this.countryCode,
      this.abbrev,
      this.description,
      this.administrator,
      this.foundingYear,
      this.launchers,
      this.spacecraft,
      this.parent,
      this.imageUrl});

  Agency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    featured = json['featured'];
    type = json['type'];
    countryCode = json['country_code'];
    abbrev = json['abbrev'];
    description = json['description'];
    administrator = json['administrator'];
    foundingYear = json['founding_year'];
    launchers = json['launchers'];
    spacecraft = json['spacecraft'];
    parent = json['parent'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['featured'] = this.featured;
    data['type'] = this.type;
    data['country_code'] = this.countryCode;
    data['abbrev'] = this.abbrev;
    data['description'] = this.description;
    data['administrator'] = this.administrator;
    data['founding_year'] = this.foundingYear;
    data['launchers'] = this.launchers;
    data['spacecraft'] = this.spacecraft;
    data['parent'] = this.parent;
    data['image_url'] = this.imageUrl;
    return data;
  }
}