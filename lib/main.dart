import 'package:flutter/material.dart';
import 'package:firstapp/ScreenMain.dart';
import 'Theme/Color.dart';
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
    return const MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
