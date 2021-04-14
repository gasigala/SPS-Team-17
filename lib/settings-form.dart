import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sps_team17/User.dart';
import 'package:sps_team17/firebase.dart';
import 'package:sps_team17/loading.dart';
import 'constants.dart';


class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  String name;
  String _gamepin;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User2>(context);
    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          UserData userData = snapshot.data;
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Update your Name.',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  initialValue: userData.name,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter a name' : null,
                  onChanged: (val) => setState(() => name = val),
                ),

                ElevatedButton(
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if(_formKey.currentState.validate()) {
                      await DatabaseService(uid: user.uid).updateUserData(
                          name ?? userData.name,
                          _gamepin ?? userData.gamepin
                      );
                      Navigator.pop(context);
                    }
                  }
                  ),
              ],
            ),
          );
        } else {
          return Loading();
        }

      }
    );
  }
}
