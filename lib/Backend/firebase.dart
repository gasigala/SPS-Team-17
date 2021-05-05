import 'package:cloud_firestore/cloud_firestore.dart';
import 'User.dart';
import 'List1.dart';

class DatabaseService {
    // collection
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference names = FirebaseFirestore.instance.collection('names');
  Future updateUserData(String name , String gamePin) async {
    return await names.doc(uid).set({'name': name, 'gamepin' : gamePin,
    });
  }

  // names list
  List<List1> _listFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return List1(name: doc.data()['name']
      );
    }).toList();
  }

  //userData from snapshot
    UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
      return UserData(uid: uid, name: snapshot.data()['name']
      );
    }

  // get names
  Stream<List<List1>> get person {
    return names.snapshots().map(_listFromSnapshot);
  }

  // get user docs
  Stream<UserData> get userData{
    return names.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}