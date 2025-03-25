import 'package:flutter/material.dart';
import 'package:netflix/list.dart';

class DetailsFilmPage extends StatelessWidget {
  final Movie movie;

  const DetailsFilmPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.name, style: TextStyle(color: Colors.white),), backgroundColor: Colors.black26, ),
      body: Center(
        child: Column(
          children: [
            Image.asset(movie.image),
            Text(movie.name, style: TextStyle(
              fontSize: 21,
              fontFamily: 'BigFont',
              color: Colors.white
            ),),
            Text(movie.description, style: TextStyle(
              fontSize: 18,
              fontFamily: 'BigFont',
              color: Colors.white60,
              fontWeight: FontWeight.normal,
            ),)
          ],
        ),
      ),
    );
  }
}
