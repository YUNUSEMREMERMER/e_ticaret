import 'package:e_ticaret/components/bottom_navigation.dart';
import 'package:e_ticaret/components/header.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  
  List<Map> products = [
    {"isim":"Surface laptop 1","fotograf":"assets/images/telefon.png","fiyat":"999"},
    {"isim":"Surface laptop 2","fotograf":"assets/images/telefon.png","fiyat":"999"},
    {"isim":"Surface laptop 3","fotograf":"assets/images/telefon.png","fiyat":"999"},
    {"isim":"Surface laptop 4","fotograf":"assets/images/telefon.png","fiyat":"999"},
    {"isim":"Surface laptop 5","fotograf":"assets/images/telefon.png","fiyat":"999"},
    {"isim":"Surface laptop 6","fotograf":"assets/images/telefon.png","fiyat":"999"},
  ];

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
                  header("Laptop", context),
                  SizedBox(
                    height: 32.0,
                  ),
                  
                  Expanded(
                    child: GridView.count(crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: products.map((Map product) {
                      return buildContent(
                        product["isim"], product["fotograf"], product["fiyat"]);
                    }).toList(),
                    ),
                  )
                ],
              ),
            ),

            bottomNavigationBar("search"),
          ],


        ),
      ),
    );
  }
}

Widget buildContent(String title, String photoUrl, String price) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24.0,
            offset: Offset(0, 16),
          )
        ]),
    child: Column(
      children: [
        SizedBox(
          height: 9.0,
        ),
        Image.asset(
          photoUrl,
          width: 150.0,
          height: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Color(0xFF0A1034)),
            ),
            Text(
              "USD $price",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                  color: Color(0xFF0001FC)),
            ),
          ],
        )
      ],
    ),
  );
}
