import 'package:flutter/material.dart';
import 'package:flutter_web/custom_ui/responsive.dart';
import 'package:flutter_web/custom_ui/main_button.dart';
import 'custom_color.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.footercolor,
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '@ All Rights Reserved',
                    style: TextStyle(color: Colors.amber, fontSize: 15),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                      style: TextStyle(color: WebColors.txtcolor, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NavItem(
                        title: 'Twitter',
                        tapEvent: () {},
                      ),
                      // SizedBox(height: 20),
                      NavItem(
                        title: 'Facebook',
                        tapEvent: () {},
                      ),
                      // SizedBox(height: 20),
                      NavItem(
                        title: 'Linkedin',
                        tapEvent: () {},
                      ),
                      // SizedBox(height: 20),
                      NavItem(
                        title: 'Instagram',
                        tapEvent: () {},
                      ),
                    ],
                  )
                ],
              )),
          // Expanded(
          //     flex: 1,
          //     child: Column(
          //       children: <Widget>[
          //         NavItem(
          //           title: 'Twitter',
          //           tapEvent: () {},
          //         ),
          //         SizedBox(height: 20),
          //         NavItem(
          //           title: 'Facebook',
          //           tapEvent: () {},
          //         ),
          //         SizedBox(height: 20),
          //         NavItem(
          //           title: 'Linkedin',
          //           tapEvent: () {},
          //         ),
          //         SizedBox(height: 20),
          //         NavItem(
          //           title: 'Instagram',
          //           tapEvent: () {},
          //         ),
          //       ],
          //     )),
          Expanded(
            // flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email, color: WebColors.txtcolor),
                            border: OutlineInputBorder(),
                            hintText: 'you@example.com',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(44, 255, 255, 255),
                                fontSize: 15),
                            labelText: 'E-mail Address',
                            labelStyle: TextStyle(
                                color: WebColors.txtcolor, fontSize: 15))),
                    SizedBox(height: 10),
                    TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            icon: Icon(Icons.person, color: WebColors.txtcolor),
                            border: OutlineInputBorder(),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(44, 255, 255, 255),
                                fontSize: 15),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                                color: WebColors.txtcolor, fontSize: 15))),
                    SizedBox(height: 10),
                    TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            icon:
                                Icon(Icons.message, color: WebColors.txtcolor),
                            border: OutlineInputBorder(),
                            hintText: 'Message',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(44, 255, 255, 255),
                                fontSize: 15),
                            labelText: 'Message',
                            labelStyle: TextStyle(
                                color: WebColors.txtcolor, fontSize: 15))),
                    SizedBox(height: 10),
                    MainButton(
                      title: 'Submit',
                      color: WebColors.bgcolor1,
                      tapEvent: () {},
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: WebColors.footercolor,
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            '@ All Rights Reserved',
            style: TextStyle(color: Colors.amber, fontSize: 15),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
              style: TextStyle(color: WebColors.txtcolor, fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              Divider(
                color: Colors.white,
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Twitter',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Facebook',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Linkedin',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Instagram',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          icon: Icon(Icons.email, color: WebColors.txtcolor),
                          border: OutlineInputBorder(),
                          hintText: 'you@example.com',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(44, 255, 255, 255),
                              fontSize: 15),
                          labelText: 'E-mail Address',
                          labelStyle: TextStyle(
                              color: WebColors.txtcolor, fontSize: 12))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: WebColors.txtcolor),
                          border: OutlineInputBorder(),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(44, 255, 255, 255),
                              fontSize: 15),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              color: WebColors.txtcolor, fontSize: 12))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          icon: Icon(Icons.message, color: WebColors.txtcolor),
                          border: OutlineInputBorder(),
                          hintText: 'Message',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(44, 255, 255, 255),
                              fontSize: 15),
                          labelText: 'Message',
                          labelStyle: TextStyle(
                              color: WebColors.txtcolor, fontSize: 12))),
                ),
                SizedBox(height: 10),
                MainButton(
                  title: 'Submit',
                  color: WebColors.bgcolor1,
                  tapEvent: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      // child: Padding(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(color: Colors.amber, fontSize: 15),
      ),
      // ),
    );
  }
}
