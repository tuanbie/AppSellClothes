import 'package:firstapp/Screen/widget/login_Api/widget_ButtonAPI.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Screen/Account/RegisterForm.dart';
import 'package:firstapp/Screen/Account/LoginForm.dart';

import 'Theme/Color.dart';

class FormAC extends StatefulWidget {
  const FormAC({Key? key}) : super(key: key);

  @override
  State<FormAC> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FormAC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage('assets/images/1.png'),
                  height: 210,
                  width: 200,
                ),
                const Text(
                  "Let's you in",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 48),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: MyWidget(),
                ),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },
                          child: const Text(
                            'Sign in with password',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ))),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account ?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 173, 173, 173),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Regiter(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
