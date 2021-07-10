import 'package:flutter/material.dart';
import 'package:flutter_login/login_islemleri.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        body: loginsayfasi(),
      ),
    );
  }
}