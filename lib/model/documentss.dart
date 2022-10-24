class documentss {
  List<Documents>? documents;

  documentss({this.documents});

  documentss.fromJson(Map<String, dynamic> json) {
    if (json['documents'] != null) {
      documents = <Documents>[];
      json['documents'].forEach((v) {
        documents!.add(new Documents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.documents != null) {
      data['documents'] = this.documents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Documents {
  int? id;
  List<String>? images;
  String? name;
  String? description;
  int? userId;
  int? cityId;
  int? etablissementId;
  User? user;
  City? city;
  City? etablissement;

  Documents(
      {this.id,
      this.images,
      this.name,
      this.description,
      this.userId,
      this.cityId,
      this.etablissementId,
      this.user,
      this.city,
      this.etablissement});

  Documents.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    images = json['images'].cast<String>();
    name = json['name'];
    description = json['description'];
    userId = json['user_id'];
    cityId = json['city_id'];
    etablissementId = json['etablissement_id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    etablissement = json['etablissement'] != null
        ? new City.fromJson(json['etablissement'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['images'] = this.images;
    data['name'] = this.name;
    data['description'] = this.description;
    data['user_id'] = this.userId;
    data['city_id'] = this.cityId;
    data['etablissement_id'] = this.etablissementId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    if (this.etablissement != null) {
      data['etablissement'] = this.etablissement!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? image;

  User({this.id, this.name, this.image});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class City {
  int? id;
  String? name;

  City({this.id, this.name});

  City.fromJson(Map<String, dynamic> json) {
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
