import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../Controller/ProductController.dart';
import '../product_tile.dart';

class listwibget extends StatefulWidget {
  listwibget({super.key});

  @override
  State<listwibget> createState() => _listwibgetState();
}

class _listwibgetState extends State<listwibget> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: productController.productList.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductTile(productController.productList[index]);
      },
    ));
  }
}
