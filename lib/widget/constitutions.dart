import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

import '../const/pret.dart';
import '../const/titre1.dart';
import '../const/titre10.dart';
import '../const/titre11.dart';
import '../const/titre12.dart';
import '../const/titre2.dart';
import '../const/titre3.dart';
import '../const/titre4.dart';
import '../const/titre5.dart';
import '../const/titre6.dart';
import '../const/titre7.dart';
import '../const/titre8.dart';
import '../const/titre9.dart';

class constitutions extends StatefulWidget {
  const constitutions({super.key});

  @override
  State<constitutions> createState() => _constitutionsState();
}

class _constitutionsState extends State<constitutions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" CONSTITUTIONS DU SENEGAL ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        actions: [
          PopupMenuButton<int>(
            color: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('PREAMBULE'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('TITRE I'),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text('TITRE II'),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Text('TITRE III'),
              ),
              PopupMenuItem<int>(
                value: 4,
                child: Text('TITRE IV'),
              ),
              PopupMenuItem<int>(
                value: 5,
                child: Text('TITRE V'),
              ),
              PopupMenuItem<int>(
                value: 6,
                child: Text('TITRE VI'),
              ),
              PopupMenuItem<int>(
                value: 7,
                child: Text('TITRE VII'),
              ),
              PopupMenuItem<int>(
                value: 8,
                child: Text('TITRE VIII'),
              ),
              PopupMenuItem<int>(
                value: 9,
                child: Text('TITRE IX'),
              ),
              PopupMenuItem<int>(
                value: 10,
                child: Text('TITRE X'),
              ),
              PopupMenuItem<int>(
                value: 11,
                child: Text('TITRE XI'),
              ),
              PopupMenuItem<int>(
                value: 12,
                child: Text('TITRE XII'),
              ),
            ],
          ),
        ],
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
                              fontSize: 14,
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  collapsed: Text(
                    ("Le Peuple du Sénégal proclame solennellement son indépendance et son"
                        "attachement aux droits fondamentaux"),
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "         Le Peuple du Sénégal proclame solennellement son indépendance et"
                    "  son attachement aux droits fondamentaux tels qu’ils sont définis dans la "
                    " Déclaration desDroits de l’Homme et du Citoyen de 1789 et dans la Déclaration "
                    " Universelle du 10 décembre 1948.                               \n \n"
                    "        Il proclame le respect et la garantie intangibles:     \n          "
                    "   • Des libertés politiques;                          \n          "
                    "   • Des libertés syndicales;                                   \n          "
                    "   • Des droits et des libertés de la  \n                "
                    "personne humaine, de la famille et \n                des  collectivités  locales;   \n          "
                    "   • Des libertés philosophiques et  \n                religieuses ;    \n          "
                    "   • Du droit de propriété;  \n          "
                    "   • Des droits économiques et sociaux .\n        "
                    "Le Peuple sénégalais :\n          "
                    "   • Soucieux de préparer la voie de \n                "
                    "l’unité des Etats de l’Afrique et \n                "
                    "d’assurer les perspectives que \n              "
                    "  comporte cette unité;     \n         "
                    "   • Conscient de la nécessité d’une \n               "
                    " Unité politique, culturelle,  \n                "
                    "économique et sociale,\n                indispensable a "
                    " l’affirmation de la\n                personnalité africaine; \n        "
                    "   • Conscient des impératifs \n                "
                    "historiques , moraux et matériels \n                "
                    "qui unissent les Etats de l’Ouest \n                Africain. ",
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
///////////////////////////////////////////////////////////////////////////////////
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
                          "TITRE I",
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
///////////////////////////////////////////////////////////////////////////////////
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
                          "DE L’ETAT ET DE LA SOUVERAINETE",
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
////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "            La République du Sénégal est laïque, démocratique et sociale."
                    " Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, "
                    " de race, de sexe, de religion.Elle respecte toutes les croyances. \n \n           La langue officielle"
                    " de la République du Sénégal est le Français. Les langues nationales sont le Diola, le malinké,"
                    " le Poular, le Sérère, le Soninké et le Wolof. La devise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».\n \n"
                    "            Le drapeau de la République est composé de trois bandes verticales et égales, de couleur verte, or et rouge."
                    " Il porte, en vert, au centre de la bande or, une étoile à cinq branches. \n \n            La loi détermine le sceau et l’hymne de la République."
                    " Le principe de la République est : gouvernement du peuple, par le peuple et pour le peuple.",
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
          //////////

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
                    'Article 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "La souveraineté nationale appartient au peuple sénégalais",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "             La souveraineté nationale appartient au peuple sénégalais qui "
                    "l’exerce par ses représentants ou par la voie du référendum .\n\n"
                    " Aucune section du peuple, ni aucun individu, ne peut s’attribuer l’exercice de la souveraineté. \n\n"
                    "             Le suffrage peut être direct ou indirect. Il est toujours universel, "
                    "égal et secret. \n\n             Tous les nationaux sénégalais, des deux sexes,"
                    "âgés de 18 ans accomplis, jouissant de leurs droits civils et politiques,"
                    " sont électeurs dans les conditions déterminées par la loi. ",
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
////////////////////////////////
          ///
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
                    'Article 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    'Les partis politiques concourent à l’expression du suffrage',
                    style: TextStyle(fontSize: 16),
                    //   softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "            Les partis politiques concourent à l’expression du suffrage. Ils sont tenus de"
                    "respecter la Constitution ainsi que les Principes de la souveraineté nationale et de la"
                    "démocratie. Il leur est interdit de s’identifier à une race, à une ethnie, à un sexe, à une"
                    "religion, à une secte, à une langue ou à une région.\n \n"
                    "            Les conditions dans lesquelles les partis politiques sont formés, exercent et"
                    "cessent leurs activités, sont déterminées par la loi.",
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

////////////////////////////////////////////////////////////////

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
                    'Article 4',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Tout acte de discrimination raciale, ethnique ou religieuse",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "           Tout acte de discrimination raciale, ethnique ou religieuse de même que toute"
                    "propagande régionaliste pouvant porter atteinte à la sécurité intérieure de l’Etat ou à"
                    "l’intégrité du territoire de la République, sont punis par la loi.",
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
////////////////////////////////
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
                    'Article 5',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Les Institutions de la République sont : ",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "             Les Institutions de la République sont :\n "
                    "                 • Le Président de la République et le Gouvernement;\n"
                    "                 • L’Assemblée nationale ; \n"
                    "                 • Le Conseil Constitutionnel, le Conseil d’Etat, la Cour de Cassation et"
                    " les Cours et Tribunaux.\n\n"
                    "             La capitale de la République du Sénégal est Dakar.",
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

/////////////////////////////////////////////////////////////////////////////
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
                          "TITRE II ",
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
///////////////////////////////////////////////////////////////////////////////

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
                          "DES LIBERTES PUBLIQUES ET DE LA PERSONNE HUMAINE",
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

////////////////////////////////////////////////////////////////////////////////

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
                    'Article 6',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "La personne humaine est sacrée. L’Etat a l’obligation de la respecter et de laprotéger",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "             La personne humaine est sacrée. L’Etat a l’obligation de la respecter et de la protéger.\n\n"
                    "             Le peuple sénégalais reconnaît l’existence des droits de l’homme inviolables et"
                    "inaliénables comme base de toute communauté humaine, de la paix et de la justice dans le monde.\n\n"
                    "             Chacun a droit au libre développement de sa personnalité, pourvu, qu’il ne viole "
                    "pas le droit d’autrui, ni n’enfreigne l’ordre de la loi. Chacun a droit à la vie et à l’intégrité"
                    "physique dans les conditions définies par la loi.\n\n"
                    "             La liberté de la personne humaine est inviolable. Nul ne peut être condamné si ce "
                    "n’est en vertu d’une loi entrée en vigueur avant l’acte commis. La défense est un droit "
                    "absolu dans tous les états et à tous les degrés de la procédure",
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
///////////////////////////////////
          ///
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
                    'Article 7',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Tous les êtres humains sont égaux devant la loi. Les hommes et les femmes sontégaux en droit. ",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "            Tous les êtres humains sont égaux devant la loi. Les hommes et les femmes sont égaux en droit.\n\n"
                    "            Il n’y a au Sénégal ni sujet, ni privilège de lieu de naissance, de personne ou de famille",
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

///////////////////////////////////////////
          ///
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
                    'Article 8',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Chacun a le droit d’exprimer et de diffuser librement ses opinions par la parole",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "            Chacun a le droit d’exprimer et de diffuser librement ses opinions par la parole, la"
                    "plume et l’image. Chacun a le droit de s’instruire sans entrave aux sources accessibles à"
                    "tous. Ces droits trouvent leurs limites dans les prescriptions des lois et règlements ainsi"
                    "que dans le respect de l’honneur d’autrui.",
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
          /////////////////////////////////////////////////////////////
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
                    'Article 9',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Tous les citoyens ont le droits de constituer librement des associations et des",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "            Tous les citoyens ont le droits de constituer librement des associations et des"
                    "sociétés, sous réserve de se conformer aux formalités édictées par les lois et règlements.\n\n"
                    "          Ce droit ne peut être limité que par la loi.\n \n"
                    "            Les groupements dont le but ou l’activité seraient contraires aux lois Pénales ou"
                    "dirigés contre l’ordre public sont prohibés. ",
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

          ///////////////////////////////////////////////////////////////////////

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
                    'Article 10',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  collapsed: Text(
                    "Le secret de la correspondance, des communications postales télégraphiques",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "             Le secret de la correspondance, des communications postales télégraphiques et"
                    "téléphoniques est inviolable. Il ne peut être ordonné de restriction à cette inviolabilité"
                    "qu’en application de la loi.",
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
          ////////////////////////////////////////////////////////////////////
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
                    'Article 11',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Tous les citoyens de la République ont le droit de se déplacer et de fixer librement",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Tous les citoyens de la République ont le droit de se déplacer et de fixer librement"
                    "sur toute l’étendue de la République du Sénégal. Ce droit ne peut être limité que par la"
                    "loi. Nul ne peut être soumis à des mesures de sûreté sauf dans les cas prévus par la loi.",
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
          /////////////////////////////////////////////////////////////////////////////////
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
                    'Article 12',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le droit de propriété est garanti par la présente Constitution",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le droit de propriété est garanti par la présente Constitution. Il ne peut y être porté"
                    "atteinte que dans le cas de nécessité publique légalement constatée, sous réserve d’une"
                    " juste et préalable indemnité. ",
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

          /////////////////////////////////////////////////////////////////////
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
                    'Article 13',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le domicile est inviolable.  ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le domicile est inviolable.                                                       "
                    "Il ne peut être ordonné de perquisition que par le juge ou par les autres autorités"
                    "désignées par la loi. Les perquisitions ne peuvent être exécutées que dans les formes"
                    "prescrites par celle-ci. Des mesures portant atteinte à l’inviolabilité du domicile ou la"
                    "restreignant ne peuvent être prises que pour parer à un danger collectif ou protéger des"
                    "personnes en péril de mort.                                         "
                    "Ces mesures peuvent être également prises, en application de la loi, pour protéger"
                    "l’ordre public contre des menaces imminentes, singulièrement pour lutter contre les"
                    "  risques d’épidémie ou pour protéger la jeunesse en danger.",
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
          ///////////////////////////////////////////////////////////////////////////
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
                          "MARIAGE ET  FAMMILLE",
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

          ////////////////////////////////////////////////////////////////////////////
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
                    'Article 14',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le mariage et la famille constitue la base naturelle et morale de la communauté",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le mariage et la famille constitue la base naturelle et morale de la communauté"
                    "humaine. Ils sont placés sous la protection de l’Etat.                                                          "
                    "L’Etat et les collectivités publiques ont le devoir social de veiller à la santé"
                    "physique et morale de la famille. ",
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
          ///////////////////////////////////////////////////////////////////
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
                    'Article 15',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le mariage et la famille constitue la base naturelle et morale de la communauté",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le mariage et la famille constitue la base naturelle et morale de la communauté "
                    "humaine. Ils sont placés sous la protection de l’Etat.                                                          "
                    "L’Etat et les collectivités publiques ont le devoir social de veiller à la santé"
                    "physique et morale de la famille. ",
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
          //////////////////////////////////////////////////////////////////////
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
                          "EDUCATION ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 16',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ///////////////////////////////////////////////////////////////////////
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
                    'Article 17',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Il est pourvu à l’éducation de la jeunesse par des écoles publiques."
                    "Les institutions et les communautés religieuses sont également reconnues comme moyen d’éducation. ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Il est pourvu à l’éducation de la jeunesse par des écoles publiques.",
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
          ////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 18',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Des écoles privées peuvent être ouvertes avec l’autorisation  ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Des écoles privées peuvent être ouvertes avec l’autorisation et sous le contrôle de l’Etat. ",
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
          //////////////////////////////////////////////////////////////////////////////////
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
                          "RELIGIONS ET  COMMUNAUTES RELIGIEUSES ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 19',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "La liberté de conscience, la profession et la pratique libre de la religion, sous",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "La liberté de conscience, la profession et la pratique libre de la religion, sous"
                    "réserve de l’ordre public, sont garanties à tous.                                                                   "
                    "Les institutions et les communautés religieuses ont le droit de se développer sans"
                    "entrave. Elles sont dégagées de la tutelle l’Etat. Elles règlent et administrent leurs affaires"
                    "d’une manière autonome. ",
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
          //////////////////////////////////////////////////////////////////////////////////
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
                          "TRAVAIL ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),

          //////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 20',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Chacun a le droit de travailler et le droit de prétendre à un emploi. Nul ne peutêtre lésé dans son travail,",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Chacun a le droit de travailler et le droit de prétendre à un emploi. Nul ne peut"
                    "être lésé dans son travail, en raison de ses origines, de ses opinions, ou de ses croyances.                                                                                 "
                    " Le travailleur peut adhérer à un syndicat et défendre ses droits par l’actionsyndicale.                                                  "
                    "Le droit de grève est reconnu. Il s’exerce dans le cadre des lois qui le régissent. Il"
                    "ne peut en aucun cas porter atteinte à la liberté du travail.                                            "
                    "Tout travailleur participe, par l’intermédiaire de ses délégués, à la détermination"
                    " des conditions de travail.                          "
                    "Des lois particulières fixent les conditions d’assistance et de protection que la"
                    "société accorde aux travailleurs.",
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
          ///////////////////////////////////////////////////////////////////////////////////////////////////
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
                          "TITRE III ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),
          ///////////////////////////////////////////////////////////////////////////////
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
                          "DU PRESIDENT DE LA REPUBLIQUE ET DU GOUVERNEMENT ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )),
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
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
                    'Article 21',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le Président de la République est élu au suffrage universel",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le Président de la République est élu au suffrage universel direct et au scrutin"
                    " majoritaire à deux tours.     "
                    " Il n'est rééligible qu'une seule fois.",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 22',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "La durée du mandat présidentiel est de cinq ans",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "La durée du mandat présidentiel est de cinq ans",
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
          ////////////////////////////////////////////////////////////////////////////
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
                    'Article 23',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Tout candidat à la Présidence de la République doit être exclusivement ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Tout candidat à la Présidence de la République doit être exclusivement de"
                    "nationalité sénégalaise, jouir de ses droits civils et politiques et être âgé de 35 ans au"
                    "moins.",
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
          //////////////////////////////////////////////////////////////////////////
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
                    'Article 24',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Les candidatures sont déposées au greffe du Conseil Constitutionnel, trente jours"
                    "francs au moins et soixante jours",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Les candidatures sont déposées au greffe du Conseil Constitutionnel, trente jours"
                    "francs au moins et soixante jours francs au plus avant le premier tour du scrutin."
                    "Toutefois, en cas de décès d'un candidat, le dépôt de nouvelles candidatures est possible à "
                    "tout moment et jusqu'à la veille du tour de scrutin qui suit              "
                    "Toute candidature, pour être recevable, doit être présentée par un parti politique"
                    "légalement constitué ou être accompagnée de la signature d'électeurs représentant au"
                    "moins dix mille inscrits domiciliés dans six régions à raison de cinq cents au moins par"
                    "région. Les candidats indépendants, comme les partis politiques, sont tenus de se"
                    "conformer à l'article 3 de la Constitution. Chaque parti ou coalition de partis politiques ne"
                    "peut présenter qu'une seule candidature.",
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
          ////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 25',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Vingt neuf jours francs avant le premier tour du scrutin, le Conseil Constitutionnel"
                    "arrête et publie la liste des candidats. ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Vingt neuf jours francs avant le premier tour du scrutin, le Conseil Constitutionnel"
                    "arrête et publie la liste des candidats.                                                                             "
                    "Les électeurs sont convoqués par décret. ",
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 26',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le scrutin pour l’élection du Président de la République a lieu quarante-cinq jours"
                    "francs au plus et trente jours francs",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le scrutin pour l’élection du Président de la République a lieu quarante-cinq jours"
                    " francs au plus et trente jours francs au moins avant la date de l’expiration du mandat du"
                    " Président de la République ou, si la Présidence est vacante par démission, empêchement"
                    "définitif ou décès, dans les soixante jours francs de la vacance. ",
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
          /////////////////////////////////////////////////////////////////////////
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
                    'Article 27',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Les Cours et Tribunaux veillent à la régularité de la campagne électorale et à l’égalité",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Les Cours et Tribunaux veillent à la régularité de la campagne électorale et à"
                    "l’égalité des candidats pour l’utilisation des moyens de propagande dans les conditions"
                    "déterminées par une loi organique.  ",
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
          ///////////////////////////////////////////////////////////////
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
                    'Article 28',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le scrutin a lieu un dimanche. Nul n’est élu au premier tour s’il n’a obtenu la"
                    "majorité absolue des suffrages exprimés",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le scrutin a lieu un dimanche. Nul n’est élu au premier tour s’il n’a obtenu la"
                    "majorité absolue des suffrages exprimés représentant au moins le quart des électeurs"
                    "inscrits. Si aucun candidat n’a obtenu la majorité requise, il est procédé à un second tour"
                    "de scrutin le deuxième dimanche suivant celui du premier tour. Seuls sont admis à se"
                    "présenter à ce second tour les deux candidats arrivés en tête au premier tour. En cas de"
                    "contestation, le second tour a lieu le deuxième dimanche suivant le jour du prononcé de"
                    "l’arrêt du Conseil Constitutionnel.                                                        "
                    "Au second tour, la majorité relative suffit. ",
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
          /////////////////////////////////////////////
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
                    'Article 29',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Les Cours et Tribunaux veillent à la régularité du scrutin dans les conditions"
                    "déterminées par une loi organique. ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "         Les Cours et Tribunaux veillent à la régularité du scrutin dans les conditions"
                    "déterminées par une loi organique. \n   \n  "
                    "La régularité des opérations électorales peut être contestée par l'un des candidats,"
                    "devant le Conseil Constitutionnel dans les soixante-douze heures qui suivent la"
                    "proclamation provisoire des résultats par une commission nationale de recensement des"
                    "votes instituée par une loi organique. \n    \n        "
                    "Si aucune contestation n'a été déposée dans les délais au greffe du Conseil "
                    "Constitutionnel, le Conseil proclame immédiatement les résultats définitifs du scrutin.\n \n        "
                    " En cas de contestation, le Conseil statue sur la réclamation, dans les cinq jours"
                    "francs, du dépôt de celle-ci. Son arrêt emporte proclamation définitive du scrutin ou"
                    "annulation de l'élection.\n \n         "
                    "En cas d'annulation, il est procédé à un nouveau tour de scrutin dans les vingt et"
                    "un jours francs qui suivent. ",
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
          ///////////////////////////////////////
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
                    'Article 30 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  collapsed: Text(
                    "Le Président de la République élu entre en fonction après la proclamation"
                    "définitive de son élection et l'expiration du mandat de son prédécesseur.",
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "           Le Président de la République élu entre en fonction après la proclamation"
                    "définitive de son élection et l'expiration du mandat de son prédécesseur. \n \n"
                    "           Le Président de la République en exercice reste en fonction jusqu'à l'installation"
                    "de son successeur. \n \n"
                    "           Au cas où le Président de la République élu décède, se trouve définitivement"
                    "empêché ou renonce au bénéfice de son élection avant son entrée en fonction, il est"
                    "procédé à de nouvelles élections dans les conditions prévues à l'article 26.  ",
                    style: TextStyle(fontSize: 16),
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 31',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 32',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 33',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          /////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 34',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 35',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ////////////////////////////////////////////////////////////////////////////
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
                    'Article 36',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////
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
                    'Article 37',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 38',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 39',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          /////////////////////////////////////////////////////////////////////////
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
                    'Article 40',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 50',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 51',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 52',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          /////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 53',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 54',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ////////////////////////////////////////////////////////////////////////////
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
                    'Article 55',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////
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
                    'Article 56',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 57',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 58',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          /////////////////////////////////////////////////////////////////////////
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
                    'Article 59',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 60',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////
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
                    'Article 61',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 62',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "L’Etat et les collectivités publiques créent les conditions préalables"
                    "et les institutions publiques qui garantissent l’éducation des enfants. ",
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
          /////////////////////////////////////
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
                    'Article 63',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////
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
                    'Article 64',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          //////////////////////////////////////////////////////////////
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
                    'Article 65',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////
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
                    'Article 66',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////
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
                    'Article 67',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 68',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 69',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 70',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 71',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////////////
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
                    'Article 72',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////
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
                    'Article 73',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////
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
                    'Article 74',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////
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
                    'Article 75',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////
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
                    'Article 76',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////
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
                    'Article 77',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 78',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          //////////////////////////////////////////////////////////////////////
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
                    'Article ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////
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
                    'Article 80',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////////////
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
                    'Article 81',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          //////////////////////////////////////////////////////////////////////////////
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
                    'Article 82',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 83',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 84',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 85',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////
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
                    'Article 86',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////
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
                    'Article 87',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////////////
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
                    'Article 88',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ///////////////////////////////////////////////////////////////////////////////////
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
                    'Article 89',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 90',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          ////////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 91',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          /////////////////////////////////////////////////////////////////////////////////////////
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
                    'Article 92',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    'La République du Sénégal est laïque, démocratique et sociale .',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    'La République du Sénégal est laïque, démocratique et sociale. Elle assure l’égalitédevant la loi de tous les citoyens, sans distinction d’origine, de race, de sexe, de religion.Elle respecte toutes les croyances.La langue officielle de la République du Sénégal est le Français. Les languesnationales sont le Diola, le malinké, le Poular, le Sérère, le Soninké et le Wolof. Ladevise de la République du Sénégal est: «Un Peuple - Un But - Une Foi».Le drapeau de la République est composé de trois bandes verticales et égales, decouleur verte, or et rouge. Il porte, en vert, au centre de la bande or, une étoile à cinqbranches.La loi détermine le sceau et l’hymne de la République. Le principe de laRépublique est : gouvernement du peuple, par le peuple et pour le peuple.',
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
          //////////////////////////////////////////////////////////////////////////////////
        ],
      ),
    );
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => pret()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre1()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre2()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre3()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre4()));
      break;
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre5()));
      break;
    case 6:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre6()));
      break;

    case 7:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre7()));
      break;

    case 8:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre8()));
      break;

    case 9:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre9()));
      break;
    case 10:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre10()));
      break;
    case 11:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre11()));
      break;
    case 12:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => titre12()));
      break;
  }
}
