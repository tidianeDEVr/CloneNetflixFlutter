import 'package:clone_netflix/UI/widgets/movie.card.dart';
import 'package:clone_netflix/repositories/data.repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Donnees Internes
  //List<Movie>? movies;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataRepository>(context);
    return ListView(
      children: [
        Container(
            height: 617,
            color: Colors.red,
            child: dataProvider.popularMoviesList.isEmpty
                ? const Center(
                    child: Text('Indisponibilite du film'),
                  )
                : MovieCard(movie: dataProvider.popularMoviesList[0])),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Tendances actuelles ",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataProvider.popularMoviesList.length,
            itemBuilder: ((context, index) => Container(
                width: 110,
                margin: const EdgeInsets.only(right: 10),
                color: Colors.amber,
                child: dataProvider.popularMoviesList.isEmpty
                    ? const Center(
                        child: Text('Indisponibilite du film'),
                      )
                    : MovieCard(movie: dataProvider.popularMoviesList[index]))),
          ),
        ),

        // Espace
        const SizedBox(
          height: 5,
        ),
        // Actuellement au cine
        Text(
          "Actuellement au cinema ",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 250,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.blue,
                  child: Center(child: Text(index.toString())),
                )),
          ),
        ),

        // Espace
        const SizedBox(
          height: 5,
        ),
        Text(
          "Ils arrivent bientot ",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Ils arrivent bientot
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 110,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.deepOrange,
                  child: Center(child: Text(index.toString())),
                )),
          ),
        ),

        // Espace
        const SizedBox(
          height: 5,
        ),
        Text(
          "Animation",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Animation
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 110,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.purpleAccent,
                  child: Center(child: Text(index.toString())),
                )),
          ),
        ),
      ],
    );
  }
}
