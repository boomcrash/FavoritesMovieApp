import 'package:favoritesmovieapp/movie/model/movie.dart';
import 'package:flutter/cupertino.dart';

class User{
   String uid;
   String username;
   String email;
   String photoURL;
   List<Movie>? myMovies;
   List<Movie>? myFavoriteMovies;

  User({Key? key,required this.uid,required this.username,required this.email,required this.photoURL, this.myMovies, this.myFavoriteMovies});

}