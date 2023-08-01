// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spare_parts/screens/home/home.dart';

class SparePart extends StatefulWidget {
  const SparePart({super.key});

  @override
  State<SparePart> createState() => _SparePartState();
}

class _SparePartState extends State<SparePart> {
  int startingIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          [
            "Spare Parts",
            "Cart",
            "Bookmark",
            "Profile",
          ][startingIndex],
          style: const TextStyle(
            fontFamily: 'Gotham',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleTextStyle: const TextStyle(color: Color(0xff453885)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/svgs/filter.svg',
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: startingIndex,
          onTap: (int index) {
            setState(() {
              startingIndex = index;
            });
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff453885),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/search1.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/cart.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/bookmark.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/user.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
          ]),
      body: [
        Home(),
        Container(
          child: const Center(
            child: Text(
              "Cart",
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: const Center(
            child: Text(
              "Bookmark",
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: const Center(
            child: Text(
              "Profile",
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ][startingIndex],
    );
  }
}
