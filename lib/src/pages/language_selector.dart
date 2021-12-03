import 'package:flutter/material.dart';
import 'package:scooby_app/src/providers/actores_provider.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: Text('The Actors App', style: TextStyle(color: Colors.black)),
            backgroundColor: Color.fromRGBO(45, 218, 120, 1),
            actions: <Widget>[],
          ),
          body: Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/img/TMDB.png'),
                      height: 250,
                    ),
                    SizedBox(height: 100),
                    Text('Select your Language', style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/img/en-US.png'),
                          iconSize: 120,
                          onPressed: () {
                            Navigator.pushNamed(context, 'home', arguments: "en-US");
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/img/es-ES.png'),
                          iconSize: 120,
                          onPressed: () {
                            Navigator.pushNamed(context, 'home', arguments: "en-US");
                          },
                        )
                      ],
                    ),
                  ]
              )
          ),
        )
    );
  }
}