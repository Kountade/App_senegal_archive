import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre1 extends StatefulWidget {
  const titre1({super.key});

  @override
  State<titre1> createState() => _titre1State();
}

class _titre1State extends State<titre1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE I"),
      ),
      body: ListView(children: <Widget>[
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                collapsed: Text(
                  "La souveraineté nationale appartient au peuple sénégalais",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  'La souveraineté nationale appartient au peuple sénégalais qui l’exerce par ses représentants ou par la voie du référendum . Aucune section du peuple, ni aucun individu, ne peut s’attribuer l’exercice de lasouveraineté . Le suffrage peut être direct ou indirect. Il est toujours universel, égal et secret. Tous les nationaux sénégalais, des deux sexes, âgés de 18 ans accomplis, jouissantde leurs droits civils et politiques, sont électeurs dans les conditions déterminées par laloi. ',
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                collapsed: Text(
                  'Les partis politiques concourent à l’expression du suffrage',
                  //   softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  "Les partis politiques concourent à l’expression du suffrage. Ils sont tenus de"
                  "respecter la Constitution ainsi que les Principes de la souveraineté nationale et de la"
                  "démocratie. Il leur est interdit de s’identifier à une race, à une ethnie, à un sexe, à une"
                  "religion, à une secte, à une langue ou à une région.                                                        "
                  "Les conditions dans lesquelles les partis politiques sont formés, exercent et"
                  "cessent leurs activités, sont déterminées par la loi. ",
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                collapsed: Text(
                  "Tout acte de discrimination raciale, ethnique ou religieuse",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  "Tout acte de discrimination raciale, ethnique ou religieuse de même que toute"
                  "propagande régionaliste pouvant porter atteinte à la sécurité intérieure de l’Etat ou à"
                  "l’intégrité du territoire de la République, sont punis par la loi.",
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                collapsed: Text(
                  'Les Institutions de la République sont : ',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  " Les Institutions de la République sont :                               "
                  "• Le Président de la République et le Gouvernement ;                              "
                  "• L’Assemblée nationale ;                                                           "
                  "• Le Conseil Constitutionnel, le Conseil d’Etat, la Cour de      Cassation et"
                  " les Cours et Tribunaux.                                   "
                  " La capitale de la République du Sénégal est Dakar.",
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
      ]),
    );
  }
}
