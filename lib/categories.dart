import 'package:e_ticaret/category.dart';
import 'package:e_ticaret/components/bottom_navigation.dart';
import 'package:e_ticaret/components/header.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Computer",
    "Accessories",
    "Smartphones",
    "Smart objects",
    "Speakers",
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
                    header("Categories", context),
                    SizedBox(
                      height: 16.0,
                    ),
                    Expanded(
                      child: ListView(
                        children: categories
                            .map((String title) => buildCategory(title,context))
                            .toList(),
                      ),
                    )
                  ],
                )),
                bottomNavigationBar("search"),
          ],
          
        ),
      ),
    );
  }

  Widget buildCategory(String title,context) {
    return GestureDetector(
      onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CategoryPage();
      }));
    },
      child: Container(
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.only(bottom: 16.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4.0,
                  offset: Offset(0, 4))
            ]),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A1034)),
        ),
      ),
    );
  }
}
