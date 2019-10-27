import 'package:flutter/material.dart';
import 'package:flutter_day2/simple_login.dart';

class PageKetiga extends StatefulWidget {
 String email, password;
 //you must be carefull, this -r
 PageKetiga({this.email, this.password});

  @override
  _PageKetigaState createState() => _PageKetigaState();
}

class _PageKetigaState extends State<PageKetiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Page Ketiga'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Text('Email anda : ${widget.email}'),
          Text('Password anda : ${widget.password}'),
        ],
      ),
    );
  }
}
