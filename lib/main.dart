import 'package:flutter/material.dart';
import 'package:ict_klinik/login.dart';
import 'login.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ICTKLINIK',
      theme: ThemeData(
      primarySwatch: Colors.green
      ),
       home: const LoginPage(),
    );
  }
}

