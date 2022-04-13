import 'dart:math';

import 'package:favoritesmovieapp/User/bloc/bloc_user.dart';
import 'package:favoritesmovieapp/movie/ui/screens/mostrar_comentarios_destacados.dart';
import 'package:favoritesmovieapp/User/ui/screens/profile.dart';
import 'package:favoritesmovieapp/movie/ui/screens/seeTrips.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/home_trips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class PrincipalTrip extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _PrincipalTrip();

  }

}

class _PrincipalTrip extends State<PrincipalTrip>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.indigo),

                ), // BottomNavigationBarItgh
                BottomNavigationBarItem(
                    icon: Icon(Icons.movie, color: Colors.indigo),

                ), // BottomNavigationBarItem
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.indigo),

                ),
            ]
          ),
        tabBuilder: (BuildContext context, int index) {
            switch(index){
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) =>SeeTrips(),
                );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) =>MostrarDestacados(),
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    BlocProvider<UserBloc>(
                      bloc: UserBloc(),
                      child: Profile(),
                    );
                    throw e;
                  },
                );
              default:
                throw e;
            }
        },
      ),
    );

  }

}