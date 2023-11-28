import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class pret extends StatefulWidget {
  const pret({super.key});

  @override
  State<pret> createState() => _pretState();
}

class _pretState extends State<pret> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PREAMBULE",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 35,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              //decoration for the outer wrapper
              color: Color.fromARGB(255, 214, 75, 33),
              borderRadius: BorderRadius.circular(
                  30), //border radius exactly to ClipRRect
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
                              color: Color.fromARGB(255, 238, 211, 3)
                                  .withOpacity(
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
                          "PREAMBULE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),
//////////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ExpandablePanel(
                  header: Text(
                    'PREAMBULE',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    ("Le Peuple du Sénégal proclame solennellement son indépendance et son"
                        "attachement aux droits fondamentaux"),
                    style: TextStyle(fontSize: 18),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le Peuple du Sénégal proclame solennellement son indépendance et"
                    "  son attachement aux droits fondamentaux tels qu’ils sont définis dans la "
                    " Déclaration desDroits de l’Homme et du Citoyen de 1789 et dans la Déclaration "
                    " Universelle du 10 décembre 1948.                                                                                                             "
                    "  Il proclame le respect et la garantie intangibles:                                                       "
                    "   • Des libertés politiques;                                                        "
                    "   • Des libertés syndicales;                                                        "
                    "   • Des droits et des libertés de la personne humaine, de la   "
                    "      famille et des collectivités locales;                                         "
                    "   • Des libertés philosophiques et religieuses ;                         "
                    "   • Du droit de propriété;                                                               "
                    "• Des droits économiques et sociaux                                  "
                    "Le Peuple sénégalais :                                                              "
                    "• Soucieux de préparer la voie de l’unité des Etats de l’Afrique et "
                    "d’assurer les perspectives que comporte cette unité;                                                                                    "
                    "• Conscient de la nécessité d’une Unité politique, culturelle, économique"
                    "et sociale, indispensable a l’affirmation de la personnalité africaine;                                                                "
                    "• Conscient des impératifs historiques, moraux et matériels qui unissent"
                    "les Etats de l’Ouest Africain. ",
                    style: TextStyle(fontSize: 18),
                    softWrap: true,
                  ),
                  theme: ExpandableThemeData(
                    iconColor: Colors.redAccent,
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
