import 'package:flutter/material.dart';
import 'package:scooby_app/src/pages/home_page.dart';
import 'package:scooby_app/src/pages/actor_detalle.dart';
import 'package:scooby_app/src/pages/language_selector.dart';
import 'package:scooby_app/src/pages/pelicula_detalle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actors The Movie DataBase',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Language(),
        'home': (BuildContext context) => HomePage(),
        'detalle': (BuildContext context) => ActorDetalle(),
        'pelicula': (BuildContext context) => PeliculaDetalle()
      },
    );
  }
}
