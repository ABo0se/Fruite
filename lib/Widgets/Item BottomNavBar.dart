// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; // Add this line

// class ItemBottomNavBar extends StatefulWidget {
//   @override
//   _ItemBottomNavBarState createState() => _ItemBottomNavBarState();
// }

// class _ItemBottomNavBarState extends State<ItemBottomNavBar> {
//   bool isFavorite = false;

//   void toggleFavorite() {
//     setState(() {
//       isFavorite = !isFavorite;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         height: 70,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             // Row(
//             //   children: [
//             //     Text(
//             //       "Total:",
//             //       style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
//             //     ),
//             //     SizedBox(
//             //       width: 15,
//             //     ),
//             //     Text(
//             //       "\$3", //ราคาสิ้นค้าในตะกร้า
//             //       style: TextStyle(
//             //         fontSize: 19,
//             //         fontWeight: FontWeight.bold,
//             //     color: Color.fromARGB(255, 54, 187, 138),
//             //         //color: Colors.red,
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             IconButton(
//               onPressed: () {
//                 toggleFavorite();
//               },
//               icon: Icon(
//                 isFavorite ? Icons.favorite : Icons.favorite_border,
//                 color: Color.fromARGB(255, 54, 187, 138),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
