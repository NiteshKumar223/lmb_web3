import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width * 0.5,
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [

              SizedBox(height: 10),

              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),

              SizedBox(height: 10),

              NavItem(
                title: 'Products',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'About Us',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Login',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}