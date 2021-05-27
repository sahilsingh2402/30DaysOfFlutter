import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 48.0,
              ),
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 42.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        print('Hi User');
                      },
                      child: Text('Login'),
                      style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
