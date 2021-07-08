import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'default_page.dart';
import 'incoming_inventory.dart';
import 'my_account.dart';
import 'screen_incoming.dart';
import 'screen_outgoing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  int bottomSelectedIndex = 0;

  List<Widget> page_list = [
    Incoming().home_content(),
    Outgoing().home_content(),
    IncomingInventory().home_content(),
    MyAccount().home_content(),
    DefaultPage().home_content()
  ];

  @override
  void initState() {}

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = AppBar().preferredSize.height;

    return Scaffold(
      body: Container(
        child: PageView.builder(
          onPageChanged: (index) {
            pageChanged(index);
          },
          itemCount: page_list.length,
          itemBuilder: (context, index) {
            return page_list[bottomSelectedIndex];
          },
          controller: controller,
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 8, left: 8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    bottomTapped(0);
                  },
                  child: SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Home.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    bottomTapped(1);
                  },
                  child: SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Category.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => IncomingInventory(),
                      ),
                    );

                  },
                  child: SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Scan.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    bottomTapped(3);
                  },
                  child: SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Profile.svg',
                    width: 24,
                    height: 24,
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    bottomTapped(4);
                  },
                  child: SvgPicture.asset(
                    'assets/images/Iconly_Two_tone_Info_Circle.svg',
                    width: 24,
                    height: 24,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, // // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
