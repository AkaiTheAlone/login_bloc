import 'package:flutter/material.dart';
import '../blocs/bloc.dart ';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    bloc.changeEmail("l;skdjfsdlkjf");

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "your@gmail.com",
            labelText: "Email Address",
          ),
        );
      },
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "password...",
        labelText: "Password",
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Login"),
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.green),
        //style: ButtonStyle( foregroundColor: color), need to discover how to
        //change colors with elevated button, raised has been descontinued
      ),
    );
  }
}
