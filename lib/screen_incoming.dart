import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'notification.dart';

class Incoming {
  Widget home_content() {
    double height = AppBar().preferredSize.height;
    return Container(
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height,
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   CupertinoPageRoute(
                                //     builder: (context) => MyProfile(),
                                //   ),
                                // );
                              },
                              child: Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  // color: HexColor('#D60812'),
                                ),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/images/user_avatar.jpeg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   CupertinoPageRoute(
                                //     builder: (context) => MyProfile(),
                                //   ),
                                // );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sarah Mbuthia.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[900]),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Employee No:',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'S453534',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) => Notifications(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        // color: HexColor('#D60812'),
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Iconly_Two_tone_Notification.svg',
                                        width: 22,
                                        height: 22,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   CupertinoPageRoute(builder: (context) => OrderSummary(2)),
                                      // );
                                    },
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        // color: HexColor('#D60812'),
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Iconly_Two_tone_Buy.svg',
                                        width: 22,
                                        height: 22,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          // color: HexColor('#D60812'),
                        ),
                        margin: EdgeInsets.only(right: 16, left: 16),
                        padding: EdgeInsets.only(
                            right: 2, left: 16, top: 2, bottom: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                // color: HexColor('#D60812'),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  child: Container(
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jamal Imal warehouse',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Transporter ID : 34593718',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2.3 Tonnes of weight',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '12th June, 2020',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          '12:30pm',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
