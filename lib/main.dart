import 'package:form/formListBaterai.dart';
import 'package:flutter/material.dart';
import 'package:form/formRectifier.dart';
import 'package:form/home.dart';
import 'package:form/formSwitch.dart';
import 'package:form/formRouter.dart';
import 'package:form/formKabelFO.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FORM',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Home(),
        '/formListBaterai': (context) => FormListBaterai(),
        '/formSwitch': (context) => FormSwitch(),
        '/formRouter': (context) => FormRouter(),
        '/formKabelFo': (context) => FormKabelFo(),
        '/formListRectifier': (context) => FormListRectifier(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
