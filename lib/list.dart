import 'package:flutter/material.dart';
import 'package:netflix/details.dart';

class Movie {
  final String name;
  final String genre;
  final String image;
  final String description;

  Movie({
    required this.name,
    required this.genre,
    required this.image,
    this.description = '',
  });
}

class ListPage extends StatelessWidget {
  ListPage({super.key});

  final List<Movie> MovieList = [
    Movie(
        name: 'La La land',
        genre: 'Musical',
        image: 'assets/images/lalaland.jpg',
        description: 'Um romance que ta mais para história de terror, só que com jazz'),

    Movie(
        name: 'Interestelar',
        genre: 'Ficção-Cientifica',
        image: 'assets/images/interestelar.jpg',
        description: "Um pai que invés de ter ido comprar cigarro, foi parar dentro de um buraco negro."),

    Movie(
        name: 'Perfect Blue',
        genre: 'Drama',
        image: 'assets/images/perfectblue.jpg',
        description: "Triste.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filmes",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white)),
        backgroundColor: Colors.black,),

      body: ListView.builder(
          itemCount: MovieList.length,
          itemBuilder: (context, index) {
            return  GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DetailsFilmPage(movie: MovieList[index])));
              },
              child: Container(
                color: Colors.black,
                width: 400,
                height: 700,
                child: Column(
                  children: [
                    Image.asset(MovieList[index].image),
                    Text(MovieList[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21, fontWeight: FontWeight.bold
                    ),),
                    Text(MovieList[index].genre,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
