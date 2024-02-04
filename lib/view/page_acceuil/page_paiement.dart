import 'package:flutter/material.dart';
import 'package:wave_clone/provider/list_paiement.dart';

class Paiement_Page extends StatelessWidget {
  const Paiement_Page({super.key});

  final String data = "Annuler";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Paiement",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 7, 12, 5),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Chercher par nom',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // TextButton(
                //   child: Text(data),
                //   onPressed: () {},
                // ),
              ],
            ),
            
            
            Row(
              children: [
                paiementDivers(Icons.lightbulb, Colors.red, 'Factures'),
                //SizedBox(width: 10,),
                paiementDivers(Icons.food_bank_rounded, Colors.yellow, 'Restauration'),
                paiementDivers(Icons.food_bank_rounded, Color.fromARGB(255, 31, 0, 133), 'Sopping'),
                paiementDivers(Icons.food_bank_rounded, Colors.lightBlue, 'Tourisme'),
              ],
            ),
             
             

            Liste_paiement_F("Favoris", listPaiement_Favorie),
            Liste_paiement_F("Facture", listPaiement_Facture),
            Liste_paiement_F("Restauration", listPaiement_Restauration),
            Liste_paiement_F("Autre", listPaiement_Autre),


          ],
        ),
      ),
    );
  }

  Widget paiementDivers(IconData icons, Color colorIcone, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 15, 20),
      child: Column(
        children: [
          Icon(
            icons,
            color: colorIcone,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }


  Widget Liste_paiement_F(String titre_Liste, List liste_conserner){
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 15, 10),
                    child: Text(titre_Liste, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  ListView(
                  shrinkWrap: true,
                  children: liste_conserner.map((favoP) {
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.3),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            favoP.image,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      title: Text(favoP.nom),
                    );
                  }).toList(),),
                ],
              );
  }
}
