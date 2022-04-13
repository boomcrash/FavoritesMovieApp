import 'package:favoritesmovieapp/User/bloc/bloc_user.dart';
import 'package:favoritesmovieapp/principal_trip.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/gradient_back.dart';
import 'package:favoritesmovieapp/widgets/button_rounded.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }

}
class _SignInScreen extends State<SignInScreen>{
  late UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc= BlocProvider.of(context);
    return _handleCurrentSession();
  }
  Widget _handleCurrentSession(){
    return StreamBuilder(stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
      //snapshopt contiene la data
        if(!snapshot.hasData||snapshot.hasError){
          return signInGoogleUi();
        }else{
          return PrincipalTrip();
        }
      }
    );
  }

  Widget signInGoogleUi(){
    return Scaffold(
      body: Stack(
       alignment: Alignment.center,
        children: [
          GradientBack("",MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Bienvenido A la Mis Peliculas Favoritas !",
              style: TextStyle(
                  fontSize: 35,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),
              ),
              ButtonRounded(text: "Entra con Gmail",
                  onPressed: (){
                    userBloc.signIn().then((UserCredential user) => print("El usuario es ${user.user?.displayName}"));
                },
                width: 300,
                  height: 50,
              ),

            ],
          ),
        ],

      ),
    );
  }
}