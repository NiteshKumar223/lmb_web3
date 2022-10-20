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
      height: 220,
      width: double.infinity,
      color: WebColors.footercolor,
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'All Right Reserved',
                style: TextStyle(
                  color: WebColors.txtcolor,
                  fontSize: 15
                ),
              ),
            )
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                NavItem(
                  title: 'Twitter',
                  tapEvent: () {},
                ),

                NavItem(
                  title: 'Facebook',
                  tapEvent: () {},
                ),

                NavItem(
                  title: 'Linkedin',
                  tapEvent: () {},
                ),

                NavItem(
                  title: 'Instagram',
                  tapEvent: () {},
                ),
              ],
            )
          ),
          Expanded(
            flex: 1,
              child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                          maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'you@example.com',
                          hintStyle: TextStyle(color: Color.fromARGB(44, 255, 255, 255), fontSize: 12),
                          labelText: 'E-mail Address',
                          labelStyle: TextStyle(color: WebColors.txtcolor, fontSize: 12)
                        )),
                        TextFormField(
                          maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Color.fromARGB(44, 255, 255, 255), fontSize: 12),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: WebColors.txtcolor, fontSize: 12)
                        )),
                        TextFormField(
                          maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(color: Color.fromARGB(44, 255, 255, 255), fontSize: 12),
                          labelText: 'Message',
                          labelStyle: TextStyle(color: WebColors.txtcolor, fontSize: 12)
                        )),
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

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: WebColors.footercolor,
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          Text(
            '@All Right Reserved',
            style: TextStyle(
              color: WebColors.txtcolor,
              fontSize: 15
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Twitter',
                tapEvent: () {},
              ),
          
              NavItem(
                title: 'Facebook',
                tapEvent: () {},
              ),
          
              NavItem(
                title: 'Linkedin',
                tapEvent: () {},
              ),
          
              NavItem(
                title: 'Instagram',
                tapEvent: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.tapEvent
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            color: WebColors.txtcolor,
            fontSize: 15
          ),
        ),
      ),
    );
  }
}