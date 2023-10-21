import 'package:flutter/material.dart';
import 'package:modul1/app/modules/home/controllers/home_nav_bar.dart';
import 'package:modul1/app/modules/home/views/items_widget.dart';
import 'package:modul1/app/modules/home/views/items_widget2.dart';
import 'package:modul1/app/modules/home/views/items_widget3.dart';
import 'package:modul1/app/modules/home/views/items_widget4.dart';
//import 'package:modul1/app/modules/home/views/image_picker.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, //there will be 4 tabs as example
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "SingleItemPage2");
                        },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Food & Drink",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  // controller: _tabController,
                  // labelColor: Color(0xFFE57734),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734),
                    ),
                  ),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 25),
                  tabs: [
                    Tab(text: "Burger"),
                    Tab(text: "Pizza"),
                    Tab(text: "Pasta"),
                    Tab(text: "Drink"),
                  ],
                ),
                Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        ItemsWidget(),
                        ItemsWidget2(),
                        ItemsWidget3(),
                        ItemsWidget4(),
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
