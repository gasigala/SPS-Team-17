import 'package:firebase_auth/firebase_auth.dart';
import 'User.dart';
import 'firebase.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User2 _userFromFirebaseUser(User user) {
    return user != null ? User2(uid: user.uid) : null;
  }

 Stream<User2> get user {
   return _auth.authStateChanges().map(_userFromFirebaseUser);
 }

// registration anon
  Future signInAnon(String name, String gamePin) async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      await DatabaseService(uid: user.uid).updateUserData('','');
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}

