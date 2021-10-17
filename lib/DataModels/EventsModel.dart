class EventsModel {
  int? count;
  String? next;
  String? previous;
  List<EventResults>? results;

  EventsModel({this.count, this.next, this.previous, this.results});

  EventsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(new EventResults.fromJson(v));
      });
    }
  }


}

class EventResults {
  int? id;
  String? url;
  String? slug;
  String? name;
 
  Type? type;
  String? description;
  String? location;
  String? newsUrl;
  String? videoUrl;
  String? featureImage;
  String? date;
  List<Launches>? launches;
  List<Expeditions>? expeditions;
  List<Spacestations>? spacestations;
  List<Program>? program;

  EventResults(
      {this.id,
      this.url,
      this.slug,
      this.name,
     
      this.type,
      this.description,
      this.location,
      this.newsUrl,
      this.videoUrl,
      this.featureImage,
      this.date,
      this.launches,
      this.expeditions,
      this.spacestations,
      this.program});

  EventResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    name = json['name'];
 
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    description = json['description'];
    location = json['location'];
    newsUrl = json['news_url'];
    videoUrl = json['video_url'];
    featureImage = json['feature_image'];
    date = json['date'];
    if (json['launches'] != null) {
      launches = [];
      json['launches'].forEach((v) {
        launches?.add(new Launches.fromJson(v));
      });
    }
    if (json['expeditions'] != null) {
      expeditions =[];
      json['expeditions'].forEach((v) {
        expeditions?.add(new Expeditions.fromJson(v));
      });
    }
    if (json['spacestations'] != null) {
      spacestations =[];
      json['spacestations'].forEach((v) {
        spacestations?.add(new Spacestations.fromJson(v));
      });
    }
    if (json['program'] != null) {
      program = [];
      json['program'].forEach((v) {
        program?.add(new Program.fromJson(v));
      });
    }
  }


}

class Type {
  int? id;
  String? name;

  Type({this.id, this.name});

  Type.fromJson(Map<String, dynamic> json) {
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

class Launches {
  String? id;
  String? url;
  String? slug;
  String? name;
  Type? status;
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

  Launches(
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

  Launches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
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
      program =  [];
      json['program'].forEach((v) {
        program?.add(new Program.fromJson(v));
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['abbrev'] = this.abbrev;
    data['description'] = this.description;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.configuration != null) {
      data['configuration'] = this.configuration?.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['family'] = this.family;
    data['full_name'] = this.fullName;
    data['variant'] = this.variant;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['launch_designator'] = this.launchDesignator;
    data['type'] = this.type;
    if (this.orbit != null) {
      data['orbit'] = this.orbit?.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['abbrev'] = this.abbrev;
    return data;
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
  List<MissionPatches>? missionPatches;

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
      this.missionPatches});

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
    if (json['mission_patches'] != null) {
      missionPatches = [];
      json['mission_patches'].forEach((v) {
        missionPatches?.add(new MissionPatches.fromJson(v));
      });
    }
  }

}

class Expeditions {
  int? id;
  String? url;
  String? name;
  String? start;
  String? end;
  Spacestation? spacestation;
  List<MissionPatches>? missionPatches;

  Expeditions(
      {this.id,
      this.url,
      this.name,
      this.start,
      this.end,
      this.spacestation,
      this.missionPatches});

  Expeditions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    start = json['start'];
    end = json['end'];
    spacestation = json['spacestation'] != null
        ? new Spacestation.fromJson(json['spacestation'])
        : null;
    if (json['mission_patches'] != null) {
      missionPatches =  [];
      json['mission_patches'].forEach((v) {
        missionPatches?.add(new MissionPatches.fromJson(v));
      });
    }
  }


}

class Spacestation {
  int? id;
  String? url;
  String? name;
  Type? status;
  String? orbit;
  String? imageUrl;

  Spacestation(
      {this.id, this.url, this.name, this.status, this.orbit, this.imageUrl});

  Spacestation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
    orbit = json['orbit'];
    imageUrl = json['image_url'];
  }

  
}

class MissionPatches {
  int? id;
  String? name;
  int? priority;
  String? imageUrl;
  LaunchServiceProvider? agency;

  MissionPatches(
      {this.id, this.name, this.priority, this.imageUrl, this.agency});

  MissionPatches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    priority = json['priority'];
    imageUrl = json['image_url'];
    agency = json['agency'] != null
        ? new LaunchServiceProvider.fromJson(json['agency'])
        : null;
  }


}

class Spacestations {
  int? id;
  String? url;
  String? name;
  Type? status;
  String? founded;
  String? description;
  String? orbit;
  String? imageUrl;

  Spacestations(
      {this.id,
      this.url,
      this.name,
      this.status,
      this.founded,
      this.description,
      this.orbit,
      this.imageUrl});

  Spacestations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
    founded = json['founded'];
    description = json['description'];
    orbit = json['orbit'];
    imageUrl = json['image_url'];
  }


}
