import 'package:favoritesmovieapp/User/model/user.dart' as us;
import 'package:favoritesmovieapp/User/repository/auth_repository.dart';
import 'package:favoritesmovieapp/User/repository/cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
class UserBloc implements Bloc{
  final _auth_repository =AuthRepository();
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  //Casos de uso de mis aplicativo!
  //Caso 1 = SignIn Aplicacion
  Future<UserCredential> signIn(){
    return _auth_repository.signInFirebase();
  }
  //Caso 2 = Registrar un usuario
  final _cloudFirestoreRepository =CloudFirestoreRepository();
  void updateUserDataFirestore(us.User user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {
  }


}
