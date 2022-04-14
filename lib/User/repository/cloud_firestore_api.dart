import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user.dart';
class CloudFirestoreAPI{
  final String USERS="users";
  final String MOVIE="movies";

  final FirebaseFirestore  _db=FirebaseFirestore.instance;

  void updateUser(User user) async{
    CollectionReference usuarios =_db.collection(USERS);
    DocumentReference reference= usuarios.doc(user.uid);
    return reference.set({
      "uid":user.uid,
      "username":user.username,
      "email":user.email,
      "photoURL":user.photoURL,
      "myMovies":user.myMovies,
      "myFavoriteMovies":user.myFavoriteMovies,
      "lastSignIn":DateTime.now()
    },
      SetOptions(merge:true)
    );
  }
}