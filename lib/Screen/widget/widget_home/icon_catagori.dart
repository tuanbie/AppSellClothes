import 'package:firstapp/Screen/Theme/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class icon_categori extends StatelessWidget {
  const icon_categori({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      // margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      // margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      // margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      // margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: border),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
