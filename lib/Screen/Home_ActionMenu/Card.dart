import 'package:firstapp/Screen/widget/widget_home/List_wibget.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Screen/Theme/Color.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listwibget(),
    );
  }
}
