import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:simple_icons/simple_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 19, 151, 23),
              Color.fromARGB(255, 222, 204, 48),
              Color.fromARGB(255, 196, 17, 14)
            ])),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/logo.png"),
                radius: 45,
              ),
            ),
          ),

          ListTile(
            title: Text(
              'Home',
              textAlign: TextAlign.center,
            ),
            leading: Icon(
              Icons.home,
              color: Color.fromARGB(255, 0, 123, 224),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Color.fromARGB(255, 1, 117, 212),
              size: 35,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),

          ExpansionTile(
            title: Text("République du Sénégal"),
            leading: Icon(CupertinoIcons.flag_fill,
                color: Colors.lightBlue), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              ListTile(
                title: Text("Sénégal"),
                leading: Image.asset('images/carte.png',
                    scale: 20, color: Colors.blue),
                onTap: () {
                  //action on press
                  Navigator.pushNamed(context, "/senegal");
                },
              ),
              ListTile(
                  title: Text("Hymne national"),
                  leading: Icon(CupertinoIcons.flag_fill, color: Colors.blue),
                  onTap: () {
                    Navigator.pushNamed(context, "/hymne");
                  }),

              ListTile(
                title: Text("constitutions"),
                leading: Icon(Icons.gavel_outlined, color: Colors.lightBlue),
                onTap: () {
                  Navigator.pushNamed(context, "/constitutions");
                  //action on press
                },
              ),
              ListTile(
                title: Text("Les Institutions"),
              ),

              //more child menu
            ],
          ),

          // CULTURE

          ExpansionTile(
            title: Text("Culture"),
            leading: Image.asset("images/culture.png", scale: 20), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),

          // polique

          ExpansionTile(
            title: Text("Polique"),
            leading: Icon(SimpleIcons.amazon), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Presidents du Senegal"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Presidents A N"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),
          //     DEMOCRAPHIE
          ExpansionTile(
            title: Text("Demoncraphie"),
            leading: Icon(SimpleIcons.amazon), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Statistiques"),
                onTap: () {
                  Navigator.pushNamed(context, "/statistique");
                  //action on press
                },
              ),
              ListTile(
                title: Text("graphes"),
                onTap: () {
                  Navigator.pushNamed(context, "/graphes");
                  //action on press
                },
              ),
              //more child menu
            ],
          ),

          //HISTOIRe

          ExpansionTile(
            title: Text("Histoire"),
            leading: Icon(SimpleIcons.ibm), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),
          // Tourisme

          ExpansionTile(
            title: Text("Personnalité"),
            leading: Icon(Icons.person), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),

          ExpansionTile(
            title: Text("Tourisme"),
            leading: Image.asset("images/tourisme.png",
                color: Colors.lightBlue, scale: 20), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),
          ExpansionTile(
            title: Text("Evenements"),
            leading: Icon(
              Icons.calendar_month_outlined,
            ), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                leading: Image.asset("images/bateau.png",
                    scale: 20, color: Colors.lightBlue),
                title: Text("Le Joola 2002"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                leading: Image.asset("images/bateau.png"),
                title: Text("Tharroy 1944"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),
          // SPORTS

          ExpansionTile(
            title: Text("Sports"),
            leading: Icon(Icons.sports), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                leading: Icon(Icons.sports_kabaddi_outlined,
                    color: Colors.lightBlue),
                title: Text("combat à 2"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.sports_soccer_outlined, color: Colors.lightBlue),
                title: Text("Football"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),

          //GALERIE
          ExpansionTile(
            title: Text("Galerie"),
            leading:
                Icon(CupertinoIcons.photo_fill_on_rectangle_fill), //add icon
            childrenPadding: EdgeInsets.only(left: 90), //children padding
            children: [
              //      ExpansionTile(
              //       title: Text("Child Category 1"),
              //     ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              ListTile(
                title: Text("Child Category 1"),
                onTap: () {
                  //action on press
                },
              ),
              //more child menu
            ],
          ),
        ],
      ),
    );
  }
}
