import 'package:flutter/material.dart';
import 'package:firstapp/Theme/Color.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
          style: TextStyle(color: AppColors.black),
        ),
        leading: Container(
          child: const Padding(
            padding: EdgeInsets.all(0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/avt.jpg"),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_important),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.heart_broken_rounded),
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
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Image.asset(
                        'assets/icon/filter.png',
                        width: 5,
                        height: 5,
                      ),
                      border: InputBorder.none,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Special Offert',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // SliderP(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
