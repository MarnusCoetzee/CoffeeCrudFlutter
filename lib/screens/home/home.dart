import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/shared/loading.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService auth = AuthService();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            label: Text('Logout'),
            icon: Icon(Icons.person),
            onPressed: () async {
              loading = true;
              await auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
