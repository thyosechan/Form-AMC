import 'dart:core';
import 'package:flutter/material.dart';
import 'package:form/home.dart';

class FormKabelFo extends StatefulWidget {
  static const routeName = '/formKabelFo';
  @override
  _FormKabelFoState createState() => _FormKabelFoState();
}

class _FormKabelFoState extends State {
  bool _show1 = true;

  String r1 = "",
      r2 = "",
      r3 = "",
      txtradio1 = "",
      txtradio2 = "",
      txtradio3 = "",
      unit = "Unit 1";

  void click() {
    setState(() {
      txtradio1 = r1;
      txtradio2 = r2;
      txtradio3 = r3;
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
                  "   Formulir Check List Kabel FO",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Container(
                //container unit,lokasi,equipment,merk,type,tanggal,kondisis lingkungan
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
                          onChanged: (String newValue) {
                            setState(
                              () {
                                unit = newValue;
                              },
                            );
                          },
                          items: <String>[
                            'Unit 1',
                            'Unit 2',
                            'Unit 3',
                            'Unit 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      // Lokasi
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Lokasi",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input lokasi
                      height: 40,
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      // equipment
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Equipment",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input equipment
                      height: 40,
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      // Merk
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Merk",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input merk
                      height: 40,

                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      // type
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Type",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input type
                      height: 40,
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      // tanggal
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text(
                        "Tanggal Inspeksi",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //input tanggal
                      height: 40,
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.calendar_today),
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      color: Colors.black26,
                      child: Text(
                        "   ODF/OTB",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        "Kondisi Patchcord",
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
                              value: "Rapi",
                              title: new Text("Rapi"),
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
                              value: "Tidak Rapi",
                              title: new Text("Tidak Rapi"),
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

                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              //container label kondisi sambungan antar  battery
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Text(
                                "Foto Inspeksi",
                                style: TextStyle(fontSize: 15.0),
                                maxLines: 3,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: ButtonTheme(
                                minWidth: 285.0,
                                child: new RaisedButton(
                                  onPressed: null,
                                  child: new Text("Choose File"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      //kelompok button dan hasil
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: click,
                                  child: new Text("Add Record"),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                child: new RaisedButton(
                                  onPressed: reset,
                                  child: new Text("RESET"),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0),
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
                          txtradio1,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          txtradio2,
                          style: TextStyle(fontSize: 20),
                        ),
                        new Text(
                          txtradio3,
                          style: TextStyle(fontSize: 20),
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
