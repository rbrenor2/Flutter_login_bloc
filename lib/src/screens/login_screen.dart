import 'package:flutter/material.dart';
import 'package:login_bloc/src/blocs/bloc.dart';

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
    return StreamBuilder<String>(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'you@example.com',
                labelText: 'Email address',
                errorText: snapshot.error
            )
        );
      }
    );
  }

  Widget passwordField() {
    return StreamBuilder<String>(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          //obscureText: true,
          onChanged: bloc.changePassword,
          decoration: InputDecoration(hintText: 'Password', labelText: 'Password', errorText: snapshot.error),
        );
      }
    );
  }

  Widget submitButton() {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          shape: StadiumBorder(),
          child: Text('Login', style: TextStyle(color: Colors.white)),
          color: Colors.lightBlue,
          onPressed: snapshot.hasData ? bloc.submit : null
        );
      }
    );
  }

}