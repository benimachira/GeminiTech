import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAccount {
  Widget home_content() {
    return Builder(builder: (context) {
      return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('My Account'),
            ),
          ];
        },
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Iconly_Two_tone_Edit_Square.svg',
                      width: 24,
                      height: 24,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(child: Text('Edit Profile')),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Iconly_Two_tone_Shield_Done.svg',
                      width: 24,
                      height: 24,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(child: Text('Change Password')),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Iconly_Two_tone_Add_User.svg',
                      width: 24,
                      height: 24,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(child: Text('Refer a Friend')),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Ticket.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Text('Promotion Codes')),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: Colors.blue,
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Chat.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Text('Frequently Asked Questions (FAQs)')),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: Colors.blue,
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Info_Circle.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Text('About Gemini App')),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: Colors.blue,
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      );
    });
  }
}
