import 'package:favoritesmovieapp/User/bloc/bloc_user.dart';
import 'package:favoritesmovieapp/principal_trip.dart';
import 'package:favoritesmovieapp/widgets/gradient_back.dart';
import 'package:favoritesmovieapp/widgets/button_rounded.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:favoritesmovieapp/User/model/user.dart' as us;
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
          GradientBack(titulo: "",altura: MediaQuery.of(context).size.height),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Column(
                    children: [
                      const Text("BIENVENIDO",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 600,
                        ),
                        child: const Text("MIS PELICULAS FAVORITAS !!",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Lato",
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                    ],
                  )
                ),
                ButtonRounded(text: "Entra con Gmail",
                  onPressed: (){
                    userBloc.signIn().then((UserCredential user) {
                      print("El usuario es ${user.user?.displayName}");

                      userBloc.updateUserDataFirestore(us.User(
                        uid: (user.user?.uid ?? ""),
                        username: (user.user?.displayName ?? ""),
                        email:(user.user?.email ?? ""),
                        photoURL:(user.user?.photoURL ?? ""),
                      ));
                    });
                  },
                  width: 300,
                  height: 50,
                ),

              ],
            ),
          ),
        ],

      ),
    );
  }
}