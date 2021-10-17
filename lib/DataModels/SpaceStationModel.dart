class SpaceStationModel {
  int? count;
  String? next;
  String? previous;
  List<StationResult>? results;

  SpaceStationModel({this.count, this.next, this.previous, this.results});

  SpaceStationModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(new StationResult.fromJson(v));
      });
    }
  }


}

class StationResult{
  int? id;
  String? url;
  String? name;
  Status? status;
  Status? type;
  String? founded;
  String? deorbited;
  String? description;
  String? orbit;
  List<Owners>? owners;
  String? imageUrl;

  StationResult(
      {this.id,
      this.url,
      this.name,
      this.status,
      this.type,
      this.founded,
      this.deorbited,
      this.description,
      this.orbit,
      this.owners,
      this.imageUrl});

  StationResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    type = json['type'] != null ? new Status.fromJson(json['type']) : null;
    founded = json['founded'];
    deorbited = json['deorbited'];
    description = json['description'];
    orbit = json['orbit'];
    if (json['owners'] != null) {
      owners = [];
      json['owners'].forEach((v) {
        owners?.add(new Owners.fromJson(v));
      });
    }
    imageUrl = json['image_url'];
  }

}

class Status {
  int? id;
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

class Owners {
  int? id;
  String? url;
  String? name;
  String? abbrev;

  Owners({this.id, this.url, this.name, this.abbrev});

  Owners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    abbrev = json['abbrev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['abbrev'] = this.abbrev;
    return data;
  }
}
