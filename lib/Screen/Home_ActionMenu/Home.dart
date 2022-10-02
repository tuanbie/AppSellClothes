import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Screen/Theme/Color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firstapp/Controller/ProductController.dart';
// ignore: unused_import
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: unused_import
import 'package:firstapp/Screen/widget/product_tile.dart';

import '../widget/widget_home/icon_catagori.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final urlImages = [
    // 'assets/avt.jpg'
    //     "assets/avt.jpg"
    "assets/images/avt.jpg",
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
  ];
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        backgroundColor: white,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 10,
        title: const Text(
          'Tuan bie',
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          child: const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/avt.jpg"),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.bell),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.heart),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(
                      FontAwesomeIcons.list,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Special Offert',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: CarouselSlider.builder(
                  // carouselController: controller,
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                    height: 150,
                    // autoPlay: true,
                    // enableInfiniteScroll: false,
                    // autoPlayAnimationDuration: Duration(seconds: 2),
                    // enlargeCenterPage: true,
                    // onPageChanged: (index, reason) =>
                    //     setState(() => activeIndex = index),
                  ),
                ),
                // SizedBox(height: 12),
                // buildIndicator(),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: icon_categori(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Most Popular',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Column(
              //   children: [
              //     Expanded(
              //       child: Obx(() {
              //         if (productController.isLoading.value)
              //           return Center(child: CircularProgressIndicator());
              //         else
              //           // ignore: curly_braces_in_flow_control_structures
              //           return FittedBox(
              //             fit: BoxFit.cover,
              //             child: GridView.builder(
              //               gridDelegate:
              //                   const SliverGridDelegateWithFixedCrossAxisCount(
              //                 crossAxisCount: 2,
              //                 mainAxisSpacing: 15,
              //                 crossAxisSpacing: 15,
              //               ),
              //               itemCount: productController.productList.length,
              //               itemBuilder: (BuildContext context, int index) {
              //                 return ProductTile(
              //                     productController.productList[index]);
              //               },
              //             ),
              //           );
              //         // StaggeredGrid.count(
              //         //   crossAxisCount: 4,
              //         //   mainAxisSpacing: 4,
              //         //   crossAxisSpacing: 4,
              //         //   children: [],
              //         // );
              //         //Sta.countBuilder(
              //         //   crossAxisCount: 2,
              //         //   itemCount: productController.productList.length,
              //         //   crossAxisSpacing: 16,
              //         //   mainAxisSpacing: 16,
              //         //   itemBuilder: (context, index) {
              //         //     return ProductTile(
              //         //         productController.productList[index]);
              //         //   },
              //         //   staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              //         // );
              //       }),
              //     )
              //   ],
              // )
            ]),
          ),
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      child: Image.asset(
        urlImage,
        height: 50,
        width: 300,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
    );
