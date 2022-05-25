import 'package:clone_netflix/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/movie.dart';

class DataRepository with ChangeNotifier {
  final ApiService apiService = ApiService();
  final List<Movie> _popularMoviesList = [];
  int _popularMoviesListIndex = 1;
  List<Movie> get popularMoviesList => _popularMoviesList;
  Future<void> getPopularMovies() async {
    try {
      List<Movie> movies = await apiService.getPopularMovies(
          pageNumber: _popularMoviesListIndex);
      _popularMoviesList.addAll(movies);
      _popularMoviesListIndex++;
      notifyListeners();
    } on Response catch (response) {
      // ignore: avoid_print
      print('Erreur ${response.statusCode}');
      rethrow; // L'erreur a ete gerer
    }
  }

  Future<void> initData() async {
    await getPopularMovies();
  }
}
