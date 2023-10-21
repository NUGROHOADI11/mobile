import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget2 extends StatelessWidget {
  List img = [
    'Pizza Pepperoni',
    'Pizza Super',
    'Pizza Tomato',
    'Pizza Vegetarian',
  ];
  @override
  Widget build(BuildContext context) {
    return NewWidget(img: img);
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.img,
  });

  final List img;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF232227),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "SingleItemPage");
                  },
                  child: Column(children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "images2/${img[i]}.png",
                          width: 120,
                          height: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              img[i],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Hot Pizza",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\Rp 50.000",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart_badge_plus,
                            //CupertinoIcons.camera,
                            size: 27,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
