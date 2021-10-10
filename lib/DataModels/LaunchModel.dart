class LaunchModel {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;

  LaunchModel({this.count, this.next, this.previous, this.results});

  LaunchModel.fromJson(Map<String, dynamic> json) {
    count = json['count']??0;
    next = json['next']??"";
    previous = json['previous']??"";
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }


}

class Results {
  String? id;
  String? url;
  String? slug;
  String? name;
  Status? status;
  String? lastUpdated;
  String? net;
  String? windowEnd;
  String? windowStart;
  int? probability;
  String? holdreason;
  String? failreason;
  String? hashtag;
  LaunchServiceProvider? launchServiceProvider;
  Rocket? rocket;
  Mission? mission;
  Pad? pad;
  bool? webcastLive;
  String? image;
  String? infographic;
  List<Program>? program;

  Results(
      {this.id,
      this.url,
      this.slug,
      this.name,
      this.status,
      this.lastUpdated,
      this.net,
      this.windowEnd,
      this.windowStart,
      this.probability,
      this.holdreason,
      this.failreason,
      this.hashtag,
      this.launchServiceProvider,
      this.rocket,
      this.mission,
      this.pad,
      this.webcastLive,
      this.image,
      this.infographic,
      this.program});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    name = json['name'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    lastUpdated = json['last_updated'];
    net = json['net'];
    windowEnd = json['window_end'];
    windowStart = json['window_start'];
    probability = json['probability'];
    holdreason = json['holdreason'];
    failreason = json['failreason'];
    hashtag = json['hashtag'];
    launchServiceProvider = json['launch_service_provider'] != null
        ? new LaunchServiceProvider.fromJson(json['launch_service_provider'])
        : null;
    rocket =
        json['rocket'] != null ? new Rocket.fromJson(json['rocket']) : null;
    mission =
        json['mission'] != null ? new Mission.fromJson(json['mission']) : null;
    pad = json['pad'] != null ? new Pad.fromJson(json['pad']) : null;
    webcastLive = json['webcast_live'];
    image = json['image'];
    infographic = json['infographic'];
    if (json['program'] != null) {
      program = [];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }


}

class Status {
  int? id;
  String? name;
  String? abbrev;
  String? description;

  Status({this.id, this.name, this.abbrev, this.description});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    abbrev = json['abbrev'];
    description = json['description'];
  }

  

}

class LaunchServiceProvider {
  int? id;
  String? url;
  String? name;
  String? type;

  LaunchServiceProvider({this.id, this.url, this.name, this.type});

  LaunchServiceProvider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
  }


}

class Rocket {
  int? id;
  Configuration? configuration;

  Rocket({this.id, this.configuration});

  Rocket.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    configuration = json['configuration'] != null
        ? new Configuration.fromJson(json['configuration'])
        : null;
  }


}

class Configuration {
  int? id;
  String? url;
  String? name;
  String? family;
  String? fullName;
  String? variant;

  Configuration(
      {this.id, this.url, this.name, this.family, this.fullName, this.variant});

  Configuration.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    family = json['family'];
    fullName = json['full_name'];
    variant = json['variant'];
  }


}

class Mission {
  int? id;
  String? name;
  String? description;
  String? launchDesignator;
  String? type;
  Orbit? orbit;

  Mission(
      {this.id,
      this.name,
      this.description,
      this.launchDesignator,
      this.type,
      this.orbit});

  Mission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    launchDesignator = json['launch_designator'];
    type = json['type'];
    orbit = json['orbit'] != null ? new Orbit.fromJson(json['orbit']) : null;
  }


}

class Orbit {
  int? id;
  String? name;
  String? abbrev;

  Orbit({this.id, this.name, this.abbrev});

  Orbit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    abbrev = json['abbrev'];
  }


}

class Pad {
  int? id;
  String? url;
  int? agencyId;
  String? name;
  String? infoUrl;
  String? wikiUrl;
  String? mapUrl;
  String? latitude;
  String? longitude;
  Location? location;
  String? mapImage;
  int? totalLaunchCount;

  Pad(
      {this.id,
      this.url,
      this.agencyId,
      this.name,
      this.infoUrl,
      this.wikiUrl,
      this.mapUrl,
      this.latitude,
      this.longitude,
      this.location,
      this.mapImage,
      this.totalLaunchCount});

  Pad.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    agencyId = json['agency_id'];
    name = json['name'];
    infoUrl = json['info_url'];
    wikiUrl = json['wiki_url'];
    mapUrl = json['map_url'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    mapImage = json['map_image'];
    totalLaunchCount = json['total_launch_count'];
  }

}

class Location {
  int? id;
  String? url;
  String? name;
  String? countryCode;
  String? mapImage;
  int? totalLaunchCount;
  int? totalLandingCount;

  Location(
      {this.id,
      this.url,
      this.name,
      this.countryCode,
      this.mapImage,
      this.totalLaunchCount,
      this.totalLandingCount});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    countryCode = json['country_code'];
    mapImage = json['map_image'];
    totalLaunchCount = json['total_launch_count'];
    totalLandingCount = json['total_landing_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['country_code'] = this.countryCode;
    data['map_image'] = this.mapImage;
    data['total_launch_count'] = this.totalLaunchCount;
    data['total_landing_count'] = this.totalLandingCount;
    return data;
  }
}

class Program {
  int? id;
  String? url;
  String? name;
  String? description;
  String? imageUrl;
  String? startDate;
  String? endDate;
  String? infoUrl;
  String? wikiUrl;

  Program(
      {this.id,
      this.url,
      this.name,
      this.description,
     
      this.imageUrl,
      this.startDate,
      this.endDate,
      this.infoUrl,
      this.wikiUrl,
      });

  Program.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    description = json['description'];
    
    imageUrl = json['image_url'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    infoUrl = json['info_url'];
    wikiUrl = json['wiki_url'];
   
    }
  }


