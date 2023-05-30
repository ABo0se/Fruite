import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'user.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();

  Future signUp() async {
    String url = "http://127.0.0.1/fruite/fruit/Register.php";
    final response = await http.post(Uri.parse(url), body: {
      'name': name.text,
      'pass': pass.text,
      'email': email.text,
    });
    var data = json.decode(response.body);
    if (data == "Error") {
      Navigator.pushNamed(context, 'register');
    } else {
      await User.setsignin(true);
      Navigator.pushNamed(context, 'login');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 40),
            children: [
              SizedBox(height: 80),
              Text(
                'Fresh Fruits',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              //SizedBox(height: 20),
              
              SizedBox(height: 30),
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
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                controller: name,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
                controller: email,
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                controller: pass,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    bool isValid = formKey.currentState!.validate();
                    if (isValid) {
                      signUp();
                    }
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Login();
                    }),
                  );
                },
                child: Text("Have an Account? Log in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
