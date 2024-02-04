import 'package:flutter/material.dart';
import 'package:wave_clone/controllers/widget.dart';
import 'package:wave_clone/provider/list_info_transition.dart';
import 'package:wave_clone/view/page_parametre/page_parametre.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isObsure = false;
  void navigateTo_Parametre_Page(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Parametre_Page(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 0, 243),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          iconSize: 30,
          color: Colors.white,
          onPressed: () => navigateTo_Parametre_Page(context),
          icon: Icon(Icons.settings),
        ),
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(75, 30, 0, 0),
                child: Text(
                  isObsure ? "35.115" : "..........",
                  style: TextStyle(
                    letterSpacing: -1,
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: Row(
                  children: [
                    Text(
                      isObsure ? "F" : "",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                      icon: Icon(isObsure? Icons.visibility_off: Icons.visibility, color: Colors.white,),
                      onPressed: () {
                        setState(() {
                          if(isObsure == true){
                          isObsure = false;
                        }else{
                          isObsure = true;
                        }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SizedBox(height: 40),
            Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 160,
                      // child: Placeholder(
                      //   color: Colors.red,
                      // ),
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize
                              .min, // Ajustement de la taille principale
                          children: [
                            menu_Transition(context),
                            SizedBox(
                              height: 10,
                              child: Container(
                                  color: Color.fromARGB(255, 235, 235, 235)),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Column(
                                children: Liste_Transition.map((transaction) =>
                                    Info_Transition(
                                        nom_destinataire:
                                            transaction.nom_destinataire,
                                        date_transition:
                                            transaction.date_transition,
                                        montant: transaction.montant)).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -0,
                  left: 36,
                  right: 36,
                  child: carte_Wave(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
