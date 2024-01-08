import 'package:flutter/material.dart';
import 'package:homepage/widgets/ClipBottomBar.dart';
import 'package:homepage/widgets/bottom_nav_bar.dart';
import 'package:homepage/widgets/card_widget.dart';
import 'package:homepage/widgets/custom_add_card_button.dart';
import 'package:homepage/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            customAppBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  cardWidget('assets/image0.png',
                      'Salary',
                      '3742 4545 5400 1262',
                      'John Doe',
                      '08/24',
                      '847.65',
                      const Color(0xcc090909),
                    const Color(0xff0D0D0D),
                  ),
                  cardWidget('assets/image1.png',
                      'Food Card',
                      '3712 4554 4400 1152',
                      'John Doe',
                      '08/24',
                      '247.65',
                      const Color(0xccED7D2B),
                      const Color(0xff4F2100)
                  ),
                  cardWidget('assets/image2.png',
                      'Payment Card',
                      '3732 4185 5600 1272',
                      'John Doe',
                      '08/24',
                      '324.65',
                      const Color(0xcc001C03),
                      const Color(0xff001D03)
                  )
                ],
              ),
            ),
            customAddCardButton(),
            bottomNavBar(size)
          ],
        ),
      ),
    );
  }
}
