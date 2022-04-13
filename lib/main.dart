import 'package:favoritesmovieapp/User/bloc/bloc_user.dart';
import 'package:favoritesmovieapp/User/ui/screens/sign_in_screen.dart';
import 'package:favoritesmovieapp/principal_trip.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: "Favorites Movie APP",
          home: SignInScreen(),
        ),
        bloc: UserBloc());
  }

}
