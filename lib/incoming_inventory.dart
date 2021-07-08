import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_bottom_button.dart';
import 'custom_data.dart';
import 'models/model_inventory.dart';

class IncomingInventory extends StatelessWidget {
  List<ModelInventory> inventory = CustomData()
      .inventory_data_custom
      .map((title) => ModelInventory(title))
      .toList();

  Widget home_content() {
    var appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              leading: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
              ),
              largeTitle: Text('Incoming Inventory'),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            child: ListView.builder(
              itemCount: inventory.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                ModelInventory inventry = inventory[index];
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: Row(
                          children: [
                            Image.asset(
                              inventry.image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    inventry.name!,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Packaged in ${inventry.measure_unit}',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Text(
                                      'Jamal Imal Hakim',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '200 Kgs',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Lot no: 234YPE',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 13,
                                  ),
                                ),
                                Icon(
                                  Icons.minimize,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton:
          CustomBottomButton('RECEIVE INVENTORY', Icons.arrow_forward),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home_content(),
    );
  }
}
