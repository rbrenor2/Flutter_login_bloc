import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          emailField(),
          passwordField(),
          SizedBox(
            height: 20.0,
          ),
          submitButton()
        ]));
  }

  Widget emailField() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'you@example.com', labelText: 'Email Address'));
  }

  Widget passwordField() {
    return TextField(
      //obscureText: true,
      decoration: InputDecoration(hintText: 'Password', labelText: 'Password'),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login', style: TextStyle(color: Colors.white)),
      color: Colors.lightBlue,
      onPressed: () {},
    );
  }
}
