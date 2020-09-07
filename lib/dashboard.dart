import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.person, size: 100),
                RaisedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Change'),
                        Icon(Icons.edit),
                      ],
                    ),
                    onPressed: () {})
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Name: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Yash Raj'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Username: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Yash123'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Address: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('123 ABC, Bareilly, Uttar Pradesh'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}