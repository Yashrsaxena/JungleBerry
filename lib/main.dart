import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'contact.dart';
import 'seller.dart';
import 'buyer.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(int.parse('0xFF6C63FF')),
      ),
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(title: Text('JungleBerry'),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(text: 'Home',),
          Tab(text: 'About Us'),
          Tab(text: 'Contact'),
          Tab(text: 'Seller'),
          Tab(text: 'Buyer'),
        ],
        indicatorColor: Colors.white,)
        ),
        body: TabBarView(children: [
          Home(),
          About(),
          Contact(),
          Seller(),
          Buyer(),
        ]),
      ),
    );
  }
}
