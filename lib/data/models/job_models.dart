class JobModels {
  String? source;
  String? generated;
  int? totalLive;
  int? matched;
  int? returned;
  int? offset;
  List<Jobs>? jobs;
  String? docs;

  JobModels(
      {this.source,
        this.generated,
        this.totalLive,
        this.matched,
        this.returned,
        this.offset,
        this.jobs,
        this.docs});

  JobModels.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    generated = json['generated'];
    totalLive = json['total_live'];
    matched = json['matched'];
    returned = json['returned'];
    offset = json['offset'];
    if (json['jobs'] != null) {
      jobs = <Jobs>[];
      json['jobs'].forEach((v) {
        jobs!.add(new Jobs.fromJson(v));
      });
    }
    docs = json['docs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['generated'] = this.generated;
    data['total_live'] = this.totalLive;
    data['matched'] = this.matched;
    data['returned'] = this.returned;
    data['offset'] = this.offset;
    if (this.jobs != null) {
      data['jobs'] = this.jobs!.map((v) => v.toJson()).toList();
    }
    data['docs'] = this.docs;
    return data;
  }
}

class Jobs {
  String? title;
  String? company;
  String? location;
  bool? remote;
  String? category;
  String? level;
  String? region;
  String? salary;
  String? posted;
  String? url;
  String? applyUrl;

  Jobs(
      {this.title,
        this.company,
        this.location,
        this.remote,
        this.category,
        this.level,
        this.region,
        this.salary,
        this.posted,
        this.url,
        this.applyUrl});

  Jobs.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    company = json['company'];
    location = json['location'];
    remote = json['remote'];
    category = json['category'];
    level = json['level'];
    region = json['region'];
    salary = json['salary'];
    posted = json['posted'];
    url = json['url'];
    applyUrl = json['apply_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['company'] = this.company;
    data['location'] = this.location;
    data['remote'] = this.remote;
    data['category'] = this.category;
    data['level'] = this.level;
    data['region'] = this.region;
    data['salary'] = this.salary;
    data['posted'] = this.posted;
    data['url'] = this.url;
    data['apply_url'] = this.applyUrl;
    return data;
  }
}
