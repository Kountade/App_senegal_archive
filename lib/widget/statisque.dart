import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class statistique extends StatefulWidget {
  const statistique({super.key});

  @override
  State<statistique> createState() => _statistiqueState();
}

class _statistiqueState extends State<statistique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Statistiques "),
      ),
      body: ListView(padding: const EdgeInsets.all(5.0), children: <Widget>[
        ///////////////////////////////////////////////////////

        Container(
          height: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //decoration for the outer wrapper
            color: Color.fromARGB(255, 214, 75, 33),
            borderRadius:
                BorderRadius.circular(30), //border radius exactly to ClipRRect
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 158, 158, 158)
                    .withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: ClipRRect(
            //to clip overflown positioned containers.
            borderRadius: BorderRadius.circular(30),
            //if we set border radius on container, the overflown content get displayed at corner.
            child: Container(
                child: Stack(
              children: <Widget>[
                //Stack helps to overlap widgets
                Positioned(
                    //positioned helps to position widget wherever we want.
                    top: -95,
                    left: -5, //position of the widget
                    child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 238, 211, 3).withOpacity(
                                0.9) //background color with opacity
                            ))),
                Positioned(
                    left: -50,
                    top: -50,
                    child: Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 4, 201, 11)
                                .withOpacity(0.8)))),
                Positioned(
                  //main content container postition.
                  child: Container(
                      height: 250,
                      alignment: Alignment.center,
                      child: Text(
                        "Population & Superfice par region",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            )),
          ),
        ),
        /////////////////
        /////////////////////////////////////////////
        Container(
          margin: EdgeInsets.all(1),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(.4),
              1: FractionColumnWidth(.3),
              2: FractionColumnWidth(.3)
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        'Régions',
                      )
                    ]),
                    Column(children: [
                      Icon(
                        Icons.map,
                      ),
                      Text('Superficie')
                    ]),
                    Column(children: [
                      Icon(Icons.group),
                      Text('Populations'),
                    ]),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Dakar',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '83 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "	3 732 282 ",
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Diourbel ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4 824 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 801 999',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Fatick',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 849 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '870 361 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaffrine',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11 262 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '703 560',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaolack',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '5 357 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 155 433',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kédougou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '16 800 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '184 276',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kolda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '13 771 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '796 581',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Louga',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '24 889 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 032 644',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Matam',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '29 445 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '706 042',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Saint-Louis',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '19 241 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 063 539',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Sédhiou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 341 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '553 006',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Tambacounda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '42 364 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '841 512',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Thiès',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 670 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '2 105 711',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Ziguinchor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 339 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '662 179 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(decoration: BoxDecoration(color: Colors.red), children: [
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '196 722 km²',
                  textAlign: TextAlign.center,
                ),
                Text(
                  '16 105 711',
                  textAlign: TextAlign.center,
                ),
              ]),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          height: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //decoration for the outer wrapper
            color: Color.fromARGB(255, 214, 75, 33),
            borderRadius:
                BorderRadius.circular(30), //border radius exactly to ClipRRect
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 158, 158, 158)
                    .withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: ClipRRect(
            //to clip overflown positioned containers.
            borderRadius: BorderRadius.circular(30),
            //if we set border radius on container, the overflown content get displayed at corner.
            child: Container(
                child: Stack(
              children: <Widget>[
                //Stack helps to overlap widgets
                Positioned(
                    //positioned helps to position widget wherever we want.
                    top: -95,
                    left: -5, //position of the widget
                    child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 238, 211, 3).withOpacity(
                                0.9) //background color with opacity
                            ))),
                Positioned(
                    left: -50,
                    top: -50,
                    child: Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 4, 201, 11)
                                .withOpacity(0.8)))),
                Positioned(
                  //main content container postition.
                  child: Container(
                      height: 250,
                      alignment: Alignment.center,
                      child: Text(
                        "Superfice & Population par region en (%)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            )),
          ),
        ),
        /////////////////////////////////////////////////////////////////////////
        Container(
          margin: EdgeInsets.all(1),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(.4),
              1: FractionColumnWidth(.3),
              2: FractionColumnWidth(.3)
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        'Régions',
                      )
                    ]),
                    Column(children: [
                      Icon(
                        Icons.map,
                      ),
                      Text('Superficie')
                    ]),
                    Column(children: [
                      Icon(Icons.group),
                      Text('démographique (%)'),
                    ]),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Dakar',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '	0.042 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "	23,03 %",
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Diourbel ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2.45 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '12,99 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Fatick',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3.48 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '11,12 % ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaffrine',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '5,70 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '7,13 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaolack',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2.72 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '6,56 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kédougou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '8.53 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '6,37 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kolda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7.00 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '5,37 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Louga',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '12.65 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '5,19 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Matam',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '14.96 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '4,91 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Saint-Louis',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '9.78 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '4,36 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Sédhiou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3.73 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '4,34 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Tambacounda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '21.53 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '4,09 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Thiès',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3.39 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '3,41 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Ziguinchor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3.73 %',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1,14 %',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(decoration: BoxDecoration(color: Colors.red), children: [
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '100 %',
                  textAlign: TextAlign.center,
                ),
                Text(
                  '100 %',
                  textAlign: TextAlign.center,
                ),
              ]),
            ],
          ),
        ),

        //////////////////////////////////////////////////////////////
        Container(
          height: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //decoration for the outer wrapper
            color: Color.fromARGB(255, 214, 75, 33),
            borderRadius:
                BorderRadius.circular(30), //border radius exactly to ClipRRect
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 158, 158, 158)
                    .withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: ClipRRect(
            //to clip overflown positioned containers.
            borderRadius: BorderRadius.circular(30),
            //if we set border radius on container, the overflown content get displayed at corner.
            child: Container(
                child: Stack(
              children: <Widget>[
                //Stack helps to overlap widgets
                Positioned(
                    //positioned helps to position widget wherever we want.
                    top: -95,
                    left: -5, //position of the widget
                    child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 238, 211, 3).withOpacity(
                                0.9) //background color with opacity
                            ))),
                Positioned(
                    left: -50,
                    top: -50,
                    child: Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 4, 201, 11)
                                .withOpacity(0.8)))),
                Positioned(
                  //main content container postition.
                  child: Container(
                      height: 250,
                      alignment: Alignment.center,
                      child: Text(
                        "Sexe  population  par region",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            )),
          ),
        ),
        /////////////////////////////////////////////
        Container(
          margin: EdgeInsets.all(1),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(.4),
              1: FractionColumnWidth(.3),
              2: FractionColumnWidth(.3)
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        'Régions',
                      )
                    ]),
                    Column(children: [
                      Icon(
                        Icons.boy_outlined,
                      ),
                      Text('Hommes')
                    ]),
                    Column(children: [
                      Icon(Icons.girl_outlined),
                      Text('Femmes'),
                    ]),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Dakar',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '83 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "	3 732 282 ",
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Diourbel ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4 824 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 801 999',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Fatick',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 849 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '870 361 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaffrine',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11 262 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '703 560',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaolack',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '5 357 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 155 433',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kédougou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '16 800 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '184 276',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kolda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '13 771 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '796 581',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Louga',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '24 889 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 032 644',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Matam',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '29 445 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '706 042',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Saint-Louis',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '19 241 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 063 539',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Sédhiou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 341 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '553 006',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Tambacounda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '42 364 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '841 512',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Thiès',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 670 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '2 105 711',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Ziguinchor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 339 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '662 179 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(decoration: BoxDecoration(color: Colors.red), children: [
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '196 722 km²',
                  textAlign: TextAlign.center,
                ),
                Text(
                  '16 105 711',
                  textAlign: TextAlign.center,
                ),
              ]),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),
        /////////////////////////////////////////////////////
        Container(
          height: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //decoration for the outer wrapper
            color: Color.fromARGB(255, 214, 75, 33),
            borderRadius:
                BorderRadius.circular(30), //border radius exactly to ClipRRect
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 158, 158, 158)
                    .withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: ClipRRect(
            //to clip overflown positioned containers.
            borderRadius: BorderRadius.circular(30),
            //if we set border radius on container, the overflown content get displayed at corner.
            child: Container(
                child: Stack(
              children: <Widget>[
                //Stack helps to overlap widgets
                Positioned(
                    //positioned helps to position widget wherever we want.
                    top: -95,
                    left: -5, //position of the widget
                    child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 238, 211, 3).withOpacity(
                                0.9) //background color with opacity
                            ))),
                Positioned(
                    left: -50,
                    top: -50,
                    child: Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 4, 201, 11)
                                .withOpacity(0.8)))),
                Positioned(
                  //main content container postition.
                  child: Container(
                      height: 250,
                      alignment: Alignment.center,
                      child: Text(
                        "Transe d'age",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            )),
          ),
        ),
        /////////////////////////////////////////////
        Container(
          margin: EdgeInsets.all(1),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(.4),
              1: FractionColumnWidth(.3),
              2: FractionColumnWidth(.3)
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [
                      Icon(
                        Icons.group,
                      ),
                      Text(
                        '[0 - 25]',
                      )
                    ]),
                    Column(children: [
                      Icon(
                        Icons.group,
                      ),
                      Text('[25 - 45]')
                    ]),
                    Column(children: [
                      Icon(Icons.group),
                      Text('[45 - plus]'),
                    ]),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Dakar',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '83 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "	3 732 282 ",
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Diourbel ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4 824 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 801 999',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Fatick',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 849 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '870 361 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaffrine',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11 262 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '703 560',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kaolack',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '5 357 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 155 433',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kédougou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '16 800 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '184 276',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Kolda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '13 771 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '796 581',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Louga',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '24 889 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 032 644',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Matam',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '29 445 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '706 042',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Saint-Louis',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '19 241 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1 063 539',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Sédhiou',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 341 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '553 006',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Tambacounda',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '42 364 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '841 512',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Thiès',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '6 670 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '2 105 711',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(220, 227, 227, 134)),
                  children: [
                    Text(
                      'Ziguinchor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '7 339 km²',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '662 179 ',
                      textAlign: TextAlign.center,
                    ),
                  ]),
              TableRow(decoration: BoxDecoration(color: Colors.red), children: [
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '196 722 km²',
                  textAlign: TextAlign.center,
                ),
                Text(
                  '16 105 711',
                  textAlign: TextAlign.center,
                ),
              ]),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),
        //////////////////////////////////////////////////////
      ]),
    );
  }
}

// chats  //
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

class Graphique {
  final String regions;
  final int populations;
  final color;

  Graphique(this.regions, this.populations, this.color);
}
