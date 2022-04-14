import 'package:favoritesmovieapp/User/repository/cloud_firestore_api.dart';

import '../model/user.dart';

class CloudFirestoreRepository{
  final _cloudFirestoreAPI=CloudFirestoreAPI();
  void updateUserDataFirestore(User user)=>_cloudFirestoreAPI.updateUser(user);
}