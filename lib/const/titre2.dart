import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre2 extends StatefulWidget {
  const titre2({super.key});

  @override
  State<titre2> createState() => _titre2State();
}

class _titre2State extends State<titre2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE II"),
      ),
      body: ListView(
        children: [
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "La personne humaine est sacrée. L’Etat a l’obligation de la respecter et de laprotéger",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "La personne humaine est sacrée. L’Etat a l’obligation de la respecter et de laprotéger.                                                 "
                    " Le peuple sénégalais reconnaît l’existence des droits de l’homme inviolables et"
                    "inaliénables comme base de toute communauté humaine, de la paix et de la justice dans le monde.                                                               "
                    "Chacun a droit au libre développement de sa personnalité, pourvu, qu’il ne viole"
                    "pas le droit d’autrui, ni n’enfreigne l’ordre de la loi. Chacun a droit à la vie et à l’intégrité"
                    "physique dans les conditions définies par la loi.    "
                    "La liberté de la personne humaine est inviolable. Nul ne peut être condamné si ce"
                    "n’est en vertu d’une loi entrée en vigueur avant l’acte commis. La défense est un droit"
                    "absolu dans tous les états et à tous les degrés de la procédure",
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Tous les êtres humains sont égaux devant la loi. Les hommes et les femmes sontégaux en droit. ",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Tous les êtres humains sont égaux devant la loi. Les hommes et les femmes sont égaux en droit.                     "
                    "Il n’y a au Sénégal ni sujet, ni privilège de lieu de naissance, de personne ou de famille",
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Chacun a le droit d’exprimer et de diffuser librement ses opinions par la parole",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Chacun a le droit d’exprimer et de diffuser librement ses opinions par la parole, la"
                    "plume et l’image. Chacun a le droit de s’instruire sans entrave aux sources accessibles à"
                    "tous. Ces droits trouvent leurs limites dans les prescriptions des lois et règlements ainsi"
                    "que dans le respect de l’honneur d’autrui. ",
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Tous les citoyens ont le droits de constituer librement des associations et des",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Tous les citoyens ont le droits de constituer librement des associations et des"
                    "sociétés, sous réserve de se conformer aux formalités édictées par les lois et règlements.                                                                                           "
                    "Ce droit ne peut être limité que par la loi.                           "
                    "Les groupements dont le but ou l’activité seraient contraires aux lois Pénales ou"
                    "dirigés contre l’ordre public sont prohibés. ",
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  collapsed: Text(
                    "Le secret de la correspondance, des communications postales télégraphiques",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Le secret de la correspondance, des communications postales télégraphiques et"
                    "téléphoniques est inviolable. Il ne peut être ordonné de restriction à cette inviolabilité"
                    "qu’en application de la loi.",
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
          ///////////////////////////////////////////////////////
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
        ],
      ),
    );
  }
}
