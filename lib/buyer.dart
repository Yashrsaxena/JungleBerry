import 'package:flutter/material.dart';

class Buyer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
        var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
  return Container(
            height: height * 0.75,
            width: width * 0.90,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: 5,
                ),
              ]
            ),
          );
        }
      }
