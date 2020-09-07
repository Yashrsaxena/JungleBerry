import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
  return Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(int.parse('0xFFF7F7F7'))
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
                        'Online Solution to Fresh Groceries',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                      RaisedButton(
                          child: Text(
                            'Know More',
                            style: TextStyle(
                              color: Color(int.parse('0xFF6C63FF')),
                            ),
                          ),
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Color(int.parse('0xFF6C63FF'))),
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
                Image.asset('assets/images/illus.png',
                width: width * 0.45,),
              ],
            ),
          );
        }
      }
