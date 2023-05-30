import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../Widgets/ItemPage.dart';

class GroceryItemTitle extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagesPath;
  final dynamic color;
  void Function()? onPressed;

  GroceryItemTitle({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagesPath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // LikeButton
            _LikeButton(),
            //_EyeButton(),   //IF YOU WANT TO USE LIKE_BUTTON JUST COPIES THIS CODE
           
            // image
            Image.asset(
              imagesPath,
              height: 150,
              width: 150,
            ),

            // item name
            Text(itemName),

            // price + button
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$' + itemPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

//like button code if ypu want to use like botton just COPIES this code 

class _LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<_LikeButton> {
  bool _isLikeButtonClicked = false;

  void _navigateToItemsPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ItemsPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: IconButton(
        padding: EdgeInsets.only(left: 150,),
        icon: _isLikeButtonClicked
            //const Icon(Icons.remove_red_eye_outlined)
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.remove_red_eye_outlined),
            //: const Icon(Icons.remove_red_eye),
        color: Colors.black,
        onPressed: () {
          setState(() {
            _isLikeButtonClicked = !_isLikeButtonClicked;
          });
          _navigateToItemsPage();
        },
      ),
    );
  }
}






