class Actor {
  int gender;
  int id;
  String name;
  String profilePath;
  String description;
  double popularity;

  Actor({
    this.gender,
    this.id,
    this.name,
    this.profilePath,
    this.description,
    this.popularity
  });

  Actor.fromJsonMap(Map<String, dynamic> json) {
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    profilePath = json['profile_path'];
    popularity = json['popularity'];
  }

  List<Actor> items = [];

  Actor.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final actor = new Actor.fromJsonMap(item);
      if(actor.profilePath != null) {
        items.add(actor);
      }
    }
  }

  getFoto() { return 'https://image.tmdb.org/t/p/w500/$profilePath';}
}
