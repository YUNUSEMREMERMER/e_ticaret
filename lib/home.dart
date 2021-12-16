import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              
              children: [
                buildTitle(),
                buildBanner(),
                Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildButton(text: "Categories", icon: Icons.menu),
                      buildButton(text: "Favorites", icon: Icons.star_border),
                      buildButton(text: "Gifts", icon: Icons.card_giftcard),
                      buildButton(text: "Best selling", icon: Icons.people),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text("Sales",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Color(0xFF0A1034))),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSalesItem(
                        text: "smartphones",
                        photoUrl: "assets/images/telefon.png",
                        discount: "-%50",
                        screenWidth: screenWidth),
                    buildSalesItem(
                        text: "smartphones",
                        photoUrl: "assets/images/telefon.png",
                        discount: "-%50",
                        screenWidth: screenWidth),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSalesItem(
                        text: "smartphones",
                        photoUrl: "assets/images/telefon.png",
                        discount: "-%50",
                        screenWidth: screenWidth),
                    buildSalesItem(
                        text: "smartphones",
                        photoUrl: "assets/images/telefon.png",
                        discount: "-%50",
                        screenWidth: screenWidth),
                  ],
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEFF5FB),
                boxShadow: [
                  BoxShadow(blurRadius: 10,
                  offset: Offset(0,-3),
                  color:Colors.black.withOpacity(0.25)
                  )
                ]
              ),
              width: double.infinity,
              padding:EdgeInsets.symmetric(vertical: 20.0),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                
                buildNavIcon(iconData: Icons.home_filled,active: true),
                buildNavIcon(iconData: Icons.search,active: false),
                buildNavIcon(iconData: Icons.shopping_basket,active: false),
                buildNavIcon(iconData: Icons.person,active: false),
              ],),
            ),
          )

        ],
      ),
    ));
  }

  Widget buildNavIcon({@required IconData? iconData , @required bool? active}){
    return Icon(iconData,size: 20.0,color: Color(active! ? 0xFF0001FC : 0xFF0A1034) ,);

  } 
}

Widget buildSalesItem(
    {@required String? text,
    @required String? photoUrl,
    @required String? discount,
    @required double? screenWidth}) {
  return Container(
    
    width: (screenWidth! - 60.0) * 0.5,
    padding: EdgeInsets.only(left: 12.0, top: 12.0, bottom: 21.0, right: 12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: Color(0xFFE0ECF8),
          ),
          child: Text(
            discount!,
            style: TextStyle(color: Color(0xFF1F53E4), fontSize: 12.0),
          ),
        ),
        Center(
          child: Image.asset(
            photoUrl!,
            width: 100.7,
            height: 130.0,
          ),
        ),
        Center(
          child: Text(
            text!,
            style: TextStyle(fontSize: 18.0, color: Color(0xFF0A1034)),
          ),
        )
      ],
    ),
  );
}

Widget buildButton(
    {@required String? text,
    @required IconData? icon,
    Widget? widget,
    BuildContext? context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0ECF8),
          ),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text!,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Color(0xFF0001Fc), borderRadius: BorderRadius.circular(6.0)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bose Home Speaker",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "USD 279",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget buildTitle() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Home",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
