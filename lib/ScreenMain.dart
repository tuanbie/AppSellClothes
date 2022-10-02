import 'package:firstapp/Screen/Theme/Color.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Screen/FormAC.dart';
import 'main.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // constraints: const BoxConstraints.expand(),
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                        image: AssetImage('assets/images/main.png'),
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120),
                    Text(
                      "Bie Shop",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: black,
                          fontSize: 27),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('$FormAC');
                          },
                          child: const Text('Start',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: white))))),
            ],
          ),
        ),
      ),
    );
  }
}
