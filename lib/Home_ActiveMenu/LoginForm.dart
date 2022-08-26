import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Home_ActiveMenu/AccountSetup.dart';
import 'package:firstapp/Theme/Color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'RegisterForm.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<login> {
  final _textControllor = TextEditingController();
  final _passControllor = TextEditingController();
  bool isCheckBox = false;

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _textControllor.text.trim(),
      password: _passControllor.text.trim(),
    );
  }

  @override
  void dispose() {
    _textControllor.dispose();
    _passControllor.dispose();
    super.dispose();
  }

  // var _securetext = true;
  // final checked = CheckBoxx(title: 'Remember me');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: AppColors.white,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('assets/images/login.png'),
                    height: 170,
                    width: 170,
                  ),
                  const Text(
                    "Login to Your Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _textControllor,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Email',
                        border: InputBorder.none,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                          size: 20,
                          color: AppColors.black,
                        ),

                        // suffixIcon: IconButton(
                        //   icon: Icon(Icons.clear),
                        //   onPressed: () async => _textControllor.clear(),
                        // ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _passControllor,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Password',
                        border: InputBorder.none,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 20,
                          color: AppColors.black,
                        ),

                        // suffixIcon: IconButton(
                        //   icon: Icon(Icons.clear),
                        //   onPressed: () async => _textControllor.clear(),
                        // ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: CheckboxListTile(
                      // checkboxShape: OutlineInputBorder(borderRadius: BorderRadius.all(24)),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      value: isCheckBox,
                      onChanged: (value) {
                        setState(() => isCheckBox = value!);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Forgot the password?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'or continue with',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.grey),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            // margin: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.border),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 14),
                            child: const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            // margin: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.border),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 14),
                            child: const Icon(
                              FontAwesomeIcons.google,
                              size: 26,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            // margin: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.border),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 14),
                            child: const Icon(
                              Icons.apple,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.smailcolor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Regiter()),
                          );
                        },
                        child: const Text(
                          " Sign up",
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
