import 'dart:core';
import 'package:flutter/material.dart';
import 'package:form/home.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class DDandRB extends StatefulWidget {
  static const routeName = '/DDandRB';
  @override
  _DDandRBState createState() => _DDandRBState();
}

class _DDandRBState extends State {
  TextEditingController controllerFailure = new TextEditingController();
  TextEditingController controllerJenisForm = new TextEditingController();

  bool _show1 = true;
  bool _jenisform = true;

  String r1 = "",
      r2 = "",
      r3 = "",
      txtradio1 = "",
      txtradio2 = "",
      txtradio3 = "",
      unit = "Unit 1",
      ddvalue = "",
      failureval = "",
      now = DateFormat("dd-MM-yyyy hh:mm").format(DateTime.now()),
      datenow = "";

  void click() {
    setState(() {
      ddvalue = unit;
      txtradio1 = r1;
      txtradio2 = r2;
      txtradio3 = r3;
      failureval = controllerFailure.text;
      controllerJenisForm.text = "DDandRB";
      datenow = now;
    });
  }

  void reset() {
    setState(() {
      txtradio1 = "";
      txtradio2 = "";
      txtradio3 = "";
    });
  }

  void _pilihr1(String value) {
    setState(() {
      r1 = value;
    });
  }

  void insert() {
    var url = "http://10.0.2.2/amc_mysql/ddandrb.php";
    http.post(url, body: {
      "unit": unit,
      "indikasi": r1,
      "failure": controllerFailure.text,
      "jenisform": controllerJenisForm.text = "DDandRB",
      "tglinspek": datenow = now,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                //container MAIN TITLE label Formulir Check List Baterai..
                alignment: Alignment.centerLeft,
                height: 30,
                margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
                color: Colors.black87,
                child: Text(
                  "   TESTING DD AND RB TO MYSQL",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Container(
                //container form
                //color: Colors.amber,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    Container(
                      // unit
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Unit",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input unit
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                      height: 40,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          isExpanded: true,
                          value: unit,
                          underline: Container(
                            height: 1,
                            color: Colors.white,
                          ),
                          items: <String>[
                            'Unit 1',
                            'Unit 2',
                            'Unit 3',
                            'Unit 4'
                          ].map((String valueUnit) {
                            return new DropdownMenuItem<String>(
                              value: valueUnit,
                              child: Text(valueUnit),
                            );
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(
                              () {
                                unit = newValue;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        "Indikasi Power Supply",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 33,
                            child: new RadioListTile(
                              //radio power
                              value: "Nyala",
                              title: new Text("Nyala"),
                              groupValue: r1,
                              onChanged: (String value) {
                                _pilihr1(value);
                                if (_show1 = !_show1) {
                                  _show1 = _show1;
                                } else {
                                  _show1 = !_show1;
                                }
                              },
                              activeColor: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 33,
                            child: new RadioListTile(
                              value: "Mati",
                              title: new Text("Mati"),
                              groupValue: r1,
                              onChanged: (String value) {
                                _pilihr1(value);
                                _show1 = !_show1;
                              },
                              activeColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Visibility(
                            visible: !_show1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                              child: Text(
                                "Failure Mode",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: !_show1,
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                controller: controllerFailure,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: !_jenisform,
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                controller: controllerJenisForm,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //BATAS FORM

                    Column(
                      //kelompok button dan hasil
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: click,
                                  child: new Text("Add Record"),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: reset,
                                  child: new Text("RESET"),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Home.routeName);
                                  },
                                  child: new Text("Home"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        new Text(
                          ddvalue,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          txtradio1,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          failureval,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          controllerJenisForm.text,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          datenow,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: () {
                                    insert();
                                    Navigator.pushNamed(
                                        context, DDandRB.routeName);
                                  },
                                  child: new Text("INSERT TO MYSQL"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
