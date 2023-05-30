import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'AppBarWidget.dart';


class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  double _rating = 4;
  int _quantity = 1;

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        accentColor: Colors.lightGreenAccent,
        // Add more theme customization properties here if needed
      ),
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 181, 219, 187),
        body: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "images/Apple.png",
                height: 300,
              ),
            ),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  RatingBar.builder(
                    initialRating: _rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    "\$3",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                     color: Color.fromARGB(255, 74, 195, 106),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Green Apple",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Green apples are a crisp and tart variety of apple. They have a bright green skin and a firm, juicy flesh. With a refreshing and slightly sour taste, green apples are often used in salads, juices, and desserts. They are packed with vitamins, minerals, and dietary fiber, making them a healthy choice for a snack or addition to your favorite recipes.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Time:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Color.fromARGB(255, 74, 195, 106),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "30 Minutes",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
