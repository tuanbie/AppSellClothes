import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Theme/Color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final urlImages = [
    // 'assets/avt.jpg'
    //     "assets/avt.jpg"
    'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
    // 'https://images.app.goo.gl/SVfERx1kSrBtRjpG9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 10,
        title: const Text(
          'Tuan bie',
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          child: const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/avt.jpg"),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                Icons.chair,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Sofa',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                FontAwesomeIcons.umbrella,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Lamp',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                Icons.chair_alt_rounded,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Chair',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                FontAwesomeIcons.train,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Cupboard',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                Icons.table_restaurant,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Table',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                FontAwesomeIcons.glassWaterDroplet,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Vase',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                Icons.kitchen_outlined,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Kitchen',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              // margin: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: const Icon(
                                Icons.circle,
                                size: 28,
                              ),
                            ),
                          ),
                          const Text(
                            'Others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Most Popular',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 25,
      ),
    );
