import 'package:flutter/material.dart';
import 'package:firstapp/ScreenMain.dart';
import 'Screen/Account/AccountSetup.dart';
import 'Screen/Account/LoginForm.dart';
import 'Screen/Account/RegisterForm.dart';
import 'Screen/FormAC.dart';
import 'Screen/Home_ActionMenu/Active.dart';
import 'Screen/Theme/Color.dart';
// import 'package:flat_icons_flutter/flat_icons_flutter.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      // home: FirstScreen(),
      initialRoute: '$FirstScreen',
      routes: {
        '$FirstScreen': (_) => FirstScreen(),
        '$FormAC': (_) => FormAC(),
        '$Account': (_) => Account(),
        '$login': (_) => const login(),
        '$Regiter': (_) => const Regiter(),
        '$Home': (_) => const Home(),
      },
    );
  }
}
