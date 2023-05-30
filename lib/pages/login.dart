import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit/pages/register.dart';
import 'package:fruit/pages/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();

  Future<void> signIn() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Fresh Fruits',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'one-stop fruit shopping application',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Please sign in first.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30),

                  //logo
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 80.0,
                      right: 80.0,
                    ),
                    child: Container(
                      child: Image.asset('images/fruits.png'),
                      height: 200,
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please Input your Email';
                        }
                        return null;
                      },
                      controller: email,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please Input your Password';
                        }
                        return null;
                      },
                      controller: pass,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        bool passValid = formKey.currentState!.validate();
                        if (passValid) {
                          signIn();
                        }
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Register();
                        }),
                      );
                    },
                    child: const Text("Don't have an Account? Register now"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.lightGreen[300],
      accentColor: Colors.lightGreen[500],
    ),
  ));
}
