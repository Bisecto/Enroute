import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../shared/textFormField.dart';

class OnBodyScreen extends StatelessWidget {
  const OnBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Lottie.asset('asset/log.json',
                      height: 300, width: MediaQuery.of(context).size.width)),
              const Text(
                "ENROUTE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Please sign in to continue",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(00.0),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                      hintText: "Enter Your Email"),
                  onChanged: (val) {
                    // setState(() {
                    //   email = val;
                    // });
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                      hintText: "Enter Your Password"),
                  obscureText: true,
                  onChanged: (val) {
                    // setState(() {
                    //   password = val;
                    // });
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text("Forgot Password?",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Don't have an account? Sign Up",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
