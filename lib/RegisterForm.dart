import 'package:flutter/material.dart';
import 'main.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: SafeArea(
        // constraints: BoxConstraints.expand(),
        // color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Padding(
                //   padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                //   child: Container(
                //     width: 180,
                //     height: 180,
                //     padding: EdgeInsets.all(0),
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Color.fromARGB(255, 162, 162, 159),
                //     ),
                SizedBox(
                  height: 80,
                ),
                Image(
                  image: AssetImage('assets/images/login.png'),
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    "Login to Your Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextFormField(
                    controller: _textControllor,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color.fromARGB(31, 133, 133, 133),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () async => _textControllor.clear(),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.none,
                    autofillHints: [AutofillHints.email],
                    // Validator: ( email) => email != null && !EmailValidator.validate(email),
                    // ? 'enter a value email'
                    // :null,
                    obscureText: false,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(20),
                //   child: TextField(
                //     // onChanged: (value) => setState(() => this.password = value),
                //     // onSubmitted: (value) => setState(() => this.password = value),
                //     controller: _passControllor,
                //     decoration: InputDecoration(
                //       hintText: 'Password',
                //       fillColor: Color.fromARGB(31, 133, 133, 133),
                //       filled: true,
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(15))),
                //       prefixIcon: Icon(Icons.lock),
                //       suffixIcon: IconButton(
                //           icon: isPassWordVisible
                //               ? Icon(Icons.visibility_off)
                //               : Icon(Icons.visibility),
                //           onPressed: () => {}
                //           // setState(() => isPassWordVisible = !isPassWordVisible),(
                //           ),
                //       // border: OutlineInputBorder(),
                //     ),
                //     obscureText: !isPassWordVisible,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                //   child: SizedBox(
                //       child: ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => AccountSetup()),
                //       );
                //     },
                //     style: ElevatedButton.styleFrom(
                //         shape: const RoundedRectangleBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(25)),
                //         ),
                //         primary: Colors.black,
                //         minimumSize: const Size(400, 60)),
                //     child: const Text(
                //       'Sign in',
                //       style: TextStyle(
                //         fontSize: 15,
                //         color: Colors.white,
                //       ),
                //     ),
                //   )),
                // ),
                // // const ListTile(
                // //   onTap: () {
                // //     OnAllChecked(checked);
                // //   },
                // //   leading: Checkbox(
                // //       value: checked.value,
                // //       onChanged: (value) => OnAllChecked(checked)),
                // //   title: Text(
                // //     checked.title,
                // //     style: TextStyle(
                // //       fontSize: 10,
                // //       fontWeight: FontWeight.bold,
                // //     ),
                // //   ),
                // //   // onChanged: (bool? value){
                // //   //   setState((){
                // //   //     _checked = value!;
                // //   //   });
                // //   // },
                // //   // controlAffinity: ListTileControlAffinity.platform,
                // //   // value: _checked,
                // //   // title: const Text("Remember me"),
                // //   // activeColor: Colors.black12,
                // //   // checkColor: Colors.black,
                // // ),
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
    );
  }
}
