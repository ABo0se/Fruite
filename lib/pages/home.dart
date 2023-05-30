import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
import 'login.dart';
import 'register.dart';
import 'user.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Future logout() async {
    await User.setsignin(false);
    Navigator.pushNamed(context as BuildContext, 'login');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 230, 186), 
      body: Column(
        children: [
          //logo

          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80.0,
              bottom: 20.0,
              top: 20.0,
            ),
            child: Container(
              child: Image.asset('images/Intro.png'),
              height: 400,
              width: 450,
            ),
          ),

          //we deliver groceries at your doorstep
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Fresh Friut",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          //fresh items everyday
          Text(
            "Your One-Stop Fruit Shopping Application",
            style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),

          //get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Let's go Shopping",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
