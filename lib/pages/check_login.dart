import 'package:flutter/material.dart';
import 'user.dart';

class check_login extends StatefulWidget{
  const check_login({Key? key}) : super(key: key);

  @override
  State<check_login> createState() => _check_loginState();
}

class _check_loginState extends State<check_login>{
  Future Checklogin() async{
    bool? signin = await User.getsignin();
    print(signin);
    if(signin == false){
      Navigator.pushNamed(context, 'login');
    }else{
      Navigator.pushNamed(context, 'intro_page');
    }
  }
  void initState(){
    check_login();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold();
  }
}

