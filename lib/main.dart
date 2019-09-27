import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:flutter_day2/simple_login.dart';

void main() => runApp(MyApp());

const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];





class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),debugShowCheckedModeBanner: false,
    );
  }
}


class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : Text('Page Home Day 2'),
              backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Notofication Widgetc & Retrivieve Value'),
            ),

            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: MaterialButton(
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Toast'),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 45.0),
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Alert1'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => NetworkGiffyDialog(
                          key: keys[1],
                          image: Image.network(
                            "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Granny Eating Chocolate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w600),
                          ),
                          description: Text(
                            'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                            textAlign: TextAlign.center,
                          ),
                          onOkButtonPressed: () {},
                        ));
                  }),
            ),

            Container(
              margin: EdgeInsets.only(top: 45.0),
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Alert2'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => AssetGiffyDialog(
                          key: keys[5],
                          image: Image.asset(
                            'assets/men_wearing_jacket.gif',
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Men Wearing Jackets',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w600),
                          ),
                          description: Text(
                            'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                          onOkButtonPressed: () {},
                        ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageSimplelogin()),
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('To Simple Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
