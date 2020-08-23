import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
  return Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(int.parse('0xFFFFFFFF'))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: width * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[FloatingActionButton(
                          child: Image.asset('assets/images/facebook.png',
                          height: 40,
                          color: Colors.white,),
                          isExtended: true,
                          focusColor: Colors.red,
                          hoverColor: Colors.blue[800],
                          backgroundColor: Color(int.parse('0xFF6C63FF')),
                          onPressed: (){}),
                          FloatingActionButton(
                          child: Image.asset('assets/images/instagram.png',
                          height: 40,
                          color: Colors.white,),
                          hoverColor: Color(int.parse('0xFFDD2A7B')),
                          backgroundColor: Color(int.parse('0xFF6C63FF')),
                          onPressed: (){}),
                          FloatingActionButton(
                          child: Image.asset('assets/images/whatsapp.png',
                          height: 40,
                          color: Colors.white),
                          hoverColor: Color(int.parse('0xFF4FCE5D')),
                          backgroundColor: Color(int.parse('0xFF6C63FF')),
                          onPressed: (){}),
                          FloatingActionButton(
                          child: Image.asset('assets/images/facebook-messenger.png',
                          height: 40,
                          color: Colors.white,),
                          hoverColor: Color(int.parse('0xFF006AFF')),
                          backgroundColor: Color(int.parse('0xFF6C63FF')),
                          onPressed: (){}),
                          FloatingActionButton(
                          child: Image.asset('assets/images/telegram.png',
                          height: 40,
                          color: Colors.white,),
                          hoverColor: Color(int.parse('0xFF0088CC')),
                          backgroundColor: Color(int.parse('0xFF6C63FF')),
                          onPressed: (){}),
                    ],
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/contact.jpg',
                width: width * 0.45,),
              ],
            ),
          );
        }
      }
