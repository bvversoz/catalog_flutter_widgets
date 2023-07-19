import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter your username',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              errorText: 'Invalid email',
            ),
          ),
        ],
      ),
    );
  }
}
