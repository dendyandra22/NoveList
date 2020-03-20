import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png')
      ),
    );

    final appName = Text(
      'NoveList',
      style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,    
    );

    final appDesc = Text(
      'Create and share your precious novel widely',
      style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 16            
      ),
      textAlign: TextAlign.center,    
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,      
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)          
        )
      ),
    );

    final password = TextFormField(  
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)          
        )
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(24.0),
        // shadowColor: Colors.lightBlueAccent.shade100,
        // elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){

          },
          color: Colors.lightBlueAccent,
          child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))
        ),
      ),
    );

    final forgotButton = FlatButton(
      child: Text('Forgot Password', style: TextStyle(color: Colors.black54, fontSize: 16)),
      onPressed: (){

      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 12.0),
            appName,
            SizedBox(height: 8.0),
            appDesc,
            SizedBox(height: 24.0),
            email,
            SizedBox(height: 12.0),
            password,
            SizedBox(height: 8.0),
            loginButton,
            forgotButton
          ],
        )
      ),
    );
  }
}