// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:blinkit_clone_flutter/Widgets/UiHelper.dart';
import 'package:blinkit_clone_flutter/pages/cart/Cart.dart';
import 'package:blinkit_clone_flutter/pages/category/CategoryPage.dart';
import 'package:blinkit_clone_flutter/pages/home/HomePage.dart';
import 'package:blinkit_clone_flutter/pages/print/PrintPage.dart';

class BottomNavagationPage extends StatefulWidget {
  const BottomNavagationPage({super.key});

  @override
  State<BottomNavagationPage> createState() => _BottomNavagationPageState();
}

class _BottomNavagationPageState extends State<BottomNavagationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = [
      HomePage(),
      CartPage(),
      CategoryPage(),
      PrintPage(),
    ];
    return Scaffold(



      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home.png"),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping-bag.png"),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category.png"),
            label: "category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer.png"),
            label: "print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
