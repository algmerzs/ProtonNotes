import 'package:ProtonNotes/pages/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String user;

  const Profile(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perfil'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/user.png',
                  width: 200,
                ),
                Text(
                  user,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text('Aprendiz', style: Theme.of(context).textTheme.headline2),
                Text(
                  'Medellín - Colombia',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Image.asset(
                  'assets/ruthless.png',
                  width: 100,
                ),
                FlatButton(
                  color: Colors.grey[900],
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage(),
                        ),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Cerrar Sesión',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
