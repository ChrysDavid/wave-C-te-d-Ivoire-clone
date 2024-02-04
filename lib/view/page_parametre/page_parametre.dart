import 'package:flutter/material.dart';
import 'package:wave_clone/controllers/widget.dart';

// ignore: camel_case_types
class Parametre_Page extends StatefulWidget {
  const Parametre_Page({super.key});

  @override
  State<Parametre_Page> createState() => _Parametre_PageState();
}

// ignore: camel_case_types
class _Parametre_PageState extends State<Parametre_Page> {
  String number = "01 70 71 22 25";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 247, 255),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Paramètres",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listView_Custom(
              "Partager",
              2,
              [
                Icons.share,
                Icons.pix,
              ],
              [
                "Inviter un ami à rejoindre Wave",
                "Utiliser le code promotionnel",
              ],
              [
                () {
                  // Action pour Inviter un ami à rejoindre Wave
                },
                () {
                  // Action pour Ajouter aux favoris
                },
              ],
            ),
            listView_Custom(
              "Support",
              3,
              [Icons.phone, Icons.task_sharp, Icons.location_on],
              [
                "Contactez le service client",
                "Verifiez votre plafond",
                "Trouvez les agents a proximite",
              ],
              [
                () {
                  //
                },
                () {
                  //
                },
                () {
                  //
                },
              ],
            ),
            listView_Custom(
              "Securite",
              2,
              [
                Icons.phone_android,
                Icons.security,
              ],
              [
                "Inviter un ami à rejoindre Wave",
                "Utiliser le code promotionnel",
              ],
              [
                () {
                  // Action pour Inviter un ami à rejoindre Wave
                },
                () {
                  // Action pour Ajouter aux favoris
                },
              ],
            ),
            listView_Custom(
              "",
              1,
              [
                Icons.outbond_rounded,
              ],
              [
                "Se deconnecter ($number)",
              ],
              [
                () {
                  // Action pour Inviter un ami à rejoindre Wave
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}

