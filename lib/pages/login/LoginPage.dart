import 'package:blinkit_clone_flutter/Widgets/UiHelper.dart';
import 'package:blinkit_clone_flutter/pages/bottomNavagation/BottomNavagationPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Uihelper.CustomImage(
                img: "loginScreenImg.png",
              ),
            ),
            Uihelper.CustomImage(
              img: "miniLogo.png",
            ),
            Uihelper.CustomText(
              text: "India’s last minute app",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            Card(
              elevation: 4,
              child: Container(
                height: height * 0.24,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Uihelper.CustomText(
                      text: "faisal",
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.w400,
                      size: 15,
                    ),
                    Uihelper.CustomText(
                      text: "8867XXXXX5",
                      color: Color(0XFF9C9C9C),
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                    Container(
                      width: 295,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hoverElevation: 40,
                        color: Color(0XFFE23744),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavagationPage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.CustomText(
                              text: "Login with  ",
                              color: Color(0XFFffffff),
                              fontWeight: FontWeight.w400,
                              size: 15,
                            ),
                            Uihelper.CustomImage(img: "Zomato.png")
                          ],
                        ),
                      ),
                    ),
                    Uihelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0XFF9C9C9C),
                      fontWeight: FontWeight.w400,
                      size: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Uihelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
