import 'package:flutter/material.dart';
import 'package:flutter_web/custom_ui/footer.dart';
import 'package:flutter_web/custom_ui/header.dart';
import 'package:flutter_web/custom_ui/side_menu.dart';

import '../custom_ui/custom_color.dart';
import 'home_page1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300
        ),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [WebColors.bgcolor2,WebColors.bgcolor1],
              )
            ),

            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),

                home_page1(),

                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}