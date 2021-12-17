import 'package:e_ticaret/components/bottom_navigation.dart';
import 'package:e_ticaret/components/header.dart';
import 'package:e_ticaret/components/label.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;

  ProductDetailPage(this.productTitle);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  Color? selectedColor;
  int selectedCapacity = 64;
  List<Color> colors = [
    Color(0xFF52514F),
    Color(0xFF0001FC),
    Color(0xFF6F7972),
    Color(0xFFF5D8C0),
  ];

  List<int> capacities = [64, 256, 512];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(widget.productTitle, context),
                  SizedBox(
                    height: 25.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListView(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Label("new"),
                          SizedBox(
                            height: 15.0,
                          ),
                          Center(child: Image.asset("assets/images/telefon.png")),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0A1034),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: colors
                                .map((Color color) => colorOption(
                                        color, selectedColor == color, () {
                                      setState(() {
                                        selectedColor = color;
                                      });
                                    }))
                                .toList(),
                          ),
                          SizedBox(
                            height: 32.0,
                          ),
                          Text(
                            "Capacity",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0A1034),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: capacities
                                  .map((int number) => capacityOption(
                                          number, selectedCapacity == number, () {
                                        setState(() {
                                          selectedCapacity = number;
                                        });
                                      }))
                                  .toList()),
                          SizedBox(
                            height: 32.0,
                          ),
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0xFF1F53E4)),
                              child: Text(
                                "Add to cart",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              SizedBox(height: 100.0,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            bottomNavigationBar("search")
          ],
          
        ),
      ),
    );
  }
}

Widget colorOption(Color color, bool selected, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border:
              Border.all(color: Color(0xFF0001FC), width: selected ? 3.0 : 0)),
      width: 23.0,
      height: 23.0,
    ),
  );
}

Widget capacityOption(int capacity, bool selected, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 23.0),
      child: Text(
        "$capacity Gb",
        style: TextStyle(
            color: Color(selected ? 0xFF0001FC : 0xFFA7A9BE), fontSize: 16.0),
      ),
    ),
  );
}
