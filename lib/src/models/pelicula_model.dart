class Cast {
  List<Pelicula> peliculas = [];

  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((item) {
      final pelicula = Pelicula.fromJsonMap(item);
      peliculas.add(pelicula);
    });
  }
}

class Pelicula {
  int id;
  String title;
  String posterPath;

  Pelicula({
    this.id,
    this.title,
    this.posterPath,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    posterPath = json['poster_path'];
  }

  getPosterImg() {
    if (posterPath == null || posterPath.contains("svg")) {
      return 'https://homeorthopedics.com/wp-content/themes/apexclinic/images/no-image/No-Image-Found-400x264.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}
