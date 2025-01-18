import 'package:blinkit_clone_flutter/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              color: Color(0XFFF7CB45),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          size: 15,
                          fontFamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          size: 20,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          size: 14),
                      Uihelper.CustomText(
                          text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          size: 14)
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Uihelper.CustomImage(img: "cart.png"),
        SizedBox(
          height: 20,
        ),
        Uihelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            size: 16,
            fontFamily: "bold"),
        Uihelper.CustomText(
          text: "Items you order will show up here so you can buy",
          color: Color(0XFF000000),
          fontWeight: FontWeight.bold,
          size: 12,
        ),
        Uihelper.CustomText(
          text: "them again easily.",
          color: Color(0XFF000000),
          fontWeight: FontWeight.bold,
          size: 12,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Uihelper.CustomText(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                size: 16,
                fontFamily: "bold")
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                Uihelper.CustomImage(img: "milk.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Uihelper.CustomImage(img: "potato.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Uihelper.CustomImage(img: "tomato.png"),
                Padding(
                  padding: EdgeInsets.only(top: 95, left: 65),
                  child: Uihelper.CustomButton(() {}),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
