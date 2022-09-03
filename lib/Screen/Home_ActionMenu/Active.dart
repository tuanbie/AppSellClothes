import 'package:flutter/material.dart';
import 'package:firstapp/Theme/Color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'Home.dart';
import 'Card.dart';
import 'Other.dart';
import 'Profile.dart';
import 'Wallet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int _curentindex = 0;
  final tabs = [
    home(),
    Cart(),
    Other(),
    Wallet(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_curentindex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: AppColors.black,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.basketShopping),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartArrowDown),
            label: 'Other',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: _curentindex,
        onTap: (index) {
          setState(() {
            _curentindex = index;
          });
        },
      ),
    );
  }
}

// class SliderP extends StatefulWidget {
//   SliderP({Key? key}) : super(key: key);

//   @override
//   State<SliderP> createState() => _SliderPState();
// }

// class _SliderPState extends State<SliderP> {
//   int activeIndex = 0;
//   final controller = CarouselController();
//   final urlImages = [
//     'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcf.shopee.vn%2Ffile%2F008d7e1f9a3d39ae9d6a7cc09a6c3233&imgrefurl=https%3A%2F%2Fshopee.vn%2FGI%25C3%2581-CH%25E1%25BB%25A4P-H%25C3%258CNH-CHO-SHOP-QU%25E1%25BA%25A6N-%25C3%2581O-C%25E1%25BB%25B0C-%25C4%2590%25E1%25BA%25B8P-C%25E1%25BB%25A0-NH%25E1%25BB%258E-i.102580486.2291574783&tbnid=0PCDTU9KyIPVdM&vet=12ahUKEwjBgvSmp_L5AhUK8ZQKHWSxCWsQMygCegUIARDjAQ..i&docid=3jwXGgTcFK3YVM&w=640&h=640&q=h%C3%ACnh%20qu%E1%BA%A7n%20%C3%A1o&ved=2ahUKEwjBgvSmp_L5AhUK8ZQKHWSxCWsQMygCegUIARDjAQ'
//         'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 40, 40, 35),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CarouselSlider.builder(
//                 carouselController: controller,
//                 itemCount: urlImages.length,
//                 itemBuilder: (context, index, realIndex) {
//                   final urlImage = urlImages[index];
//                   return buildImage(urlImage, index);
//                 },
//                 options: CarouselOptions(
//                     height: 100,
//                     autoPlay: true,
//                     enableInfiniteScroll: false,
//                     autoPlayAnimationDuration: Duration(seconds: 2),
//                     enlargeCenterPage: true,
//                     onPageChanged: (index, reason) =>
//                         setState(() => activeIndex = index))),
//             SizedBox(height: 12),
//             buildIndicator()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildIndicator() => AnimatedSmoothIndicator(
//         onDotClicked: animateToSlide,
//         effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
//         activeIndex: activeIndex,
//         count: urlImages.length,
//       );

//   void animateToSlide(int index) => controller.animateToPage(index);
// }

// Widget buildImage(String urlImage, int index) =>
//     Container(child: Image.network(urlImage, fit: BoxFit.cover));
