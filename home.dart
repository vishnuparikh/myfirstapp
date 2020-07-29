import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'package:fluttertoast/fluttertoast.dart';

app1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.amber.shade600);

  myprint() {
    print('Vishnu PArikh!! ');
  }

  myt() {
    Fluttertoast.showToast(
        msg: "I am Vishnu !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mainbody = Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      margin: EdgeInsets.all(30),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black12,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Vishnu Parikh',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email),
                    Text('vishnuparikh@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            // onTap: myprint,
            onDoubleTap: myprint,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/vishnuparikh/myfirstapp/master/yellow.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.amber,
                  width: 3,
                ),
              ),
              // margin: EdgeInsets.all(20),
              width: 100,
              height: 100,
              // color: Colors.blue,
              // child: Text('second'),
            ),
          ),
        ],
      ));

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.yellow.shade700,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null)
        ],
      ),
      body: mainbody,
    ),
  );
}
