import 'package:firstapp/Theme/Color.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/main.png'),
                    fit: BoxFit.cover,
                    height: 120,
                    width: 120,
                  ),
                  SizedBox(
                    height: 630,
                  ),
                  Text(
                    "Bie Shop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 27),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: Container(
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormAC()),
                        );
                      },
                      // color: Colors.black,
                      // shape: const RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20)),
                      // ),
                      child: const Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// TODO Implement this library.