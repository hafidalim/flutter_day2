import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:flutter_day2/page_3.dart';


class PageSimplelogin extends StatefulWidget {
  @override
  _PageSimpleloginState createState() => _PageSimpleloginState();
}


const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _PageSimpleloginState extends State<PageSimplelogin> {
  String nEmail;

  String nPassword;

  @override
  Widget build(BuildContext context) {

    //retrieve
    TextEditingController etEmail = new TextEditingController();
    TextEditingController etPassword = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page Simple Login'),
      ),backgroundColor: Colors.cyan,

      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Icon(Icons.book,color: Colors.white, size: 90.0,),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 30.0, top: 30.0),
            alignment: Alignment.center,
            child: Text(
              'WELCOME TO DIGITAL LIBRARY', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 25.0, right: 7.0, left: 7.0),
            child: TextFormField(
              controller: etEmail,
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.email,),
                  hintText: 'Your Email Address',hintStyle: TextStyle(color: Colors.white70),
                  labelText: 'Email',labelStyle: TextStyle(color: Colors.white)
              ),
            ),
          ),

          SizedBox(height: 10.0,),

          Container(
            margin: EdgeInsets.all(7.0),
            child: TextFormField(
              controller: etPassword,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  hintText: 'Your Password',hintStyle: TextStyle(color: Colors.white70),
                  labelText: 'Password',labelStyle: TextStyle(color: Colors.white)

              ),
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 60.0, right: 20.0, left: 20.0),
            child: MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: (){
                //Pindah Class

                setState(() {
                  nEmail = etEmail.text;
                  nPassword = etPassword.text;
                });
                showDialog(
                    context: context,
                    builder: (_) => AssetGiffyDialog(
                      key: keys[5],
                      image: Image.asset(
                        'assets/men_wearing_jacket.gif',
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        'Information Email And Password',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                      description: Text(
                        ('Email : ' + etEmail.text + '\nPassword : ' + etPassword.text),
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                      onOkButtonPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga(
                            email: nEmail, password: nPassword)
                        ));
                      },
                    ));
              },
              child: Text('Login',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: MaterialButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (_) => AssetGiffyDialog(
                      key: keys[5],
                      image: Image.asset(
                        'assets/coming_soon.png',
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        'OOPS...',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                      description: Text(
                        'The Server Is Under Maintenance',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      onOkButtonPressed: () {},
                    ));
//                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
              },
              child: FlatButton(
                child: Text('I Don\'t Have Account',style: TextStyle(color: Colors.white),
                ), onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}





//          Container(
//            margin: EdgeInsets.all(7.0),
//            child: TextFormField(
//              decoration: InputDecoration(
//                hintText: 'Username',
//              ),
//            ),
//          ),
//
//          Container(
//            margin: EdgeInsets.all(7.0),
//            child: TextFormField(
//              decoration: InputDecoration(
//                hintText: 'Password',
//              ),
//            ),
//          ),
//
//          Container(
//            margin: EdgeInsets.all(7.0),
//            child: MaterialButton(
//              child: Text('Submmit'),
//              onPressed: (){},
//              color: Colors.red,
//            ),
//          ),
//
//
//
//        ],
//      ),
//    );
//  }
//}

