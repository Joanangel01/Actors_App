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
  String backdropPath;
  double voteAverage;
  String overview;

  Pelicula({
    this.id,
    this.title,
    this.posterPath,
    this.backdropPath,
    this.voteAverage,
    this.overview
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    voteAverage = json['vote_average'] / 1;
    overview = json['overview'];
  }

  getPosterImg() {
    if (posterPath == null || posterPath.contains("svg")) {
      return 'https://homeorthopedics.com/wp-content/themes/apexclinic/images/no-image/No-Image-Found-400x264.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
