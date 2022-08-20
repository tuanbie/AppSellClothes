import 'package:flutter/material.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  final _textControllor = TextEditingController();
  final _passControllor = TextEditingController();

  // var _securetext = true;
  // final checked = CheckBoxx(title: 'Remember me');
  String password = '';
  bool isPassWordVisible = false;

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
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextField(
                          controller: _textControllor,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              size: 20,
                            ),
                            // suffixIcon: IconButton(
                            //   icon: Icon(Icons.clear),
                            //   onPressed: () async => _textControllor.clear(),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextField(
                          controller: _passControllor,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 20,
                            ),
                            // suffixIcon: IconButton(
                            //     icon: isPassWordVisible
                            //         ? Icon(Icons.visibility_off)
                            //         : Icon(Icons.visibility),
                            //     onPressed: () => {}
                            //     // setState(() => isPassWordVisible = !isPassWordVisible),
                            //     ),
                            // suffixIcon: IconButton(
                            //   icon: Icon(Icons.clear),
                            //   onPressed:,
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Text('checkbox'),

                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
                        color: Colors.black),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  const Text(
                    'or continue with',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 125, 125, 125)),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton.icon(
                          icon: const Icon(
                            Icons.facebook,
                          ),
                          label: const Text(
                            '',
                          ),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            minimumSize: const Size(90, 65),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton.icon(
                          icon: const Icon(
                            Icons.g_mobiledata_rounded,
                            color: Color.fromARGB(233, 169, 68, 0),
                          ),
                          label: const Text(
                            '',
                          ),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            minimumSize: const Size(90, 65),
                            // padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton.icon(
                          icon: const Icon(
                            Icons.apple,
                            color: Colors.black,
                          ),
                          label: const Text(
                            '',
                          ),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            minimumSize: const Size(90, 65),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 173, 173, 173),
                        ),
                      ),
                      Text(
                        " Sign in",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // const ListTile(
                  //   onTap: () {
                  //     OnAllChecked(checked);
                  //   },
                  //   leading: Checkbox(
                  //       value: checked.value,
                  //       onChanged: (value) => OnAllChecked(checked)),
                  //   title: Text(
                  //     checked.title,
                  //     style: TextStyle(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   // onChanged: (bool? value){
                  //   //   setState((){
                  //   //     _checked = value!;
                  //   //   });
                  //   // },
                  //   // controlAffinity: ListTileControlAffinity.platform,
                  //   // value: _checked,
                  //   // title: const Text("Remember me"),
                  //   // activeColor: Colors.black12,
                  //   // checkColor: Colors.black,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10),
                  //   child: TextButton(
                  //     onPressed: () {
                  //       Navigator.push(context,
                  //           MaterialPageRoute(builder: (context) => Register()));
                  //     },
                  //     child: const Text(
                  //       "Forgot the password?",
                  //       style: TextStyle(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black),
                  //     ),
                  //   ),
                  // ),
                  // const Text(
                  //   'or continue with',
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: <Widget>[
                  //       OutlinedButton.icon(
                  //         icon: const Icon(
                  //           Icons.facebook,
                  //         ),
                  //         label: const Text(
                  //           '',
                  //         ),
                  //         onPressed: () {},
                  //         style: OutlinedButton.styleFrom(
                  //           shape: const RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(20)),
                  //           ),
                  //           minimumSize: const Size(90, 65),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //         width: 20,
                  //       ),
                  //       OutlinedButton.icon(
                  //         icon: const Icon(
                  //           Icons.g_mobiledata_rounded,
                  //           color: Color.fromARGB(233, 169, 68, 0),
                  //         ),
                  //         label: const Text(
                  //           '',
                  //         ),
                  //         onPressed: () {},
                  //         style: OutlinedButton.styleFrom(
                  //           shape: const RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(20)),
                  //           ),
                  //           minimumSize: const Size(90, 65),
                  //           // padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  //         ),
                  //       ),
                  //       const SizedBox(
                  //         width: 20,
                  //       ),
                  //       OutlinedButton.icon(
                  //         icon: const Icon(
                  //           Icons.apple,
                  //           color: Colors.black,
                  //         ),
                  //         label: const Text(
                  //           '',
                  //         ),
                  //         onPressed: () {},
                  //         style: OutlinedButton.styleFrom(
                  //           shape: const RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(20)),
                  //           ),
                  //           minimumSize: const Size(90, 65),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       const Text(
                  //         "Already have an account?",
                  //         style: TextStyle(
                  //             fontSize: 15,
                  //             color: Color.fromARGB(255, 173, 173, 173)),
                  //       ),
                  //       TextButton(
                  //         onPressed: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => Register()));
                  //         },
                  //         child: const Text(
                  //           "Sign in",
                  //           style: TextStyle(fontSize: 15, color: Colors.black),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
