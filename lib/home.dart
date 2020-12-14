import 'package:form/formListBaterai.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:form/formSwitch.dart';
import 'package:form/formRouter.dart';
import 'package:form/formKabelFo.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 30,
              margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: RaisedButton(
                  child: Text('Form List Baterai'),
                  onPressed: () {
                    Navigator.pushNamed(context, FormListBaterai.routeName);
                  }),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: RaisedButton(
                  child: Text('Form Switch'),
                  onPressed: () {
                    Navigator.pushNamed(context, FormSwitch.routeName);
                  }),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: RaisedButton(
                  child: Text('Form Router'),
                  onPressed: () {
                    Navigator.pushNamed(context, FormRouter.routeName);
                  }),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: RaisedButton(
                  child: Text('Form Kabel FO'),
                  onPressed: () {
                    Navigator.pushNamed(context, FormKabelFo.routeName);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}