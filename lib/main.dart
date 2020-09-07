import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'contact.dart';
import 'seller.dart';
import 'buyer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6C63FF),
      ),
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text('JungleBerry'),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(text: 'Home',),
          Tab(text: 'About Us'),
          Tab(text: 'Contact'),
          Tab(text: 'Account'),
        ],
        indicatorColor: Colors.white,)
        ),
        body: TabBarView(children: [
          Home(),
          About(),
          Contact(),
          Seller(),
        ]),
      ),
    );
  }
}
