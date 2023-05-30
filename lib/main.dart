import 'package:flutter/material.dart';
import 'package:fruit/pages/home.dart';
import 'pages/login.dart';
import 'package:fruit/pages/register.dart';
import 'package:fruit/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fruit/model/cart_model.dart';
import 'package:fruit/pages/check_login.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:fruit/model/cart_model.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}
 
  class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homepage(),

      ),
    );
  }
  
}