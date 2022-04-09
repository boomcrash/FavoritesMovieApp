import 'package:favoritesmovieapp/User/bloc/bloc_user.dart';
import 'package:favoritesmovieapp/movie/bloc/principal_trip.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
        title: "Favorites Movie APP",
        home: PrincipalTrip(),
        )
        , bloc: UserBloc());
  }

}
