import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wave_clone/view/page_acceuil/page_banque.dart';
import 'package:wave_clone/view/page_acceuil/page_paiement.dart';
import 'package:wave_clone/view/page_acceuil/page_transfert.dart';

// ------------------------Aceuille---------------------------------------------

// ignore: non_constant_identifier_names
Widget menu_Transition(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 70, 0, 22),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Transfert_Page(),
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 55,
                  width: 55,
                  color: Color.fromARGB(255, 168, 216, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/Icone_person.svg",
                      color: const Color.fromARGB(255, 0, 97, 177),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Text(
                'Transfert',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Paiement_Page(),
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 55,
                  width: 55,
                  color: Color.fromARGB(255, 247, 252, 179),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/pagne_remplit.svg",
                      color: Color.fromARGB(255, 187, 175, 0),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Text(
                'Paiements',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Banque_Page(),
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 55,
                  width: 55,
                  color: Color.fromARGB(255, 255, 232, 240),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/Banck.svg",
                      color: Colors.pink,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Text(
                'Banque',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget carte_Wave() {
  return Container(
    height: 195,
    width: 320,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: AssetImage("assets/images/QR code.png"),
          ),
        ),
      ),
    ),
  );
}

//------------------------------------------------------------------------------------------

// ignore: non_constant_identifier_names
Widget listView_Custom(String title, int numberOfItems, List<IconData> icons,
    List<String> texts, List<void Function()> onTapAction) {
  return Padding(
    padding: const EdgeInsets.all(17),
    child: Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: numberOfItems,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        onTapAction[index].call();
                      },
                      child: Row(
                        children: [
                          Icon(
                            icons[index],
                            size: 35,
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Text(
                            texts[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//------------------------------------------------------------------------------------------

class Info_Transition extends StatelessWidget {
  final String nom_destinataire;
  final String date_transition;
  final String montant;

  const Info_Transition(
      {super.key,
      required this.nom_destinataire,
      required this.date_transition,
      required this.montant});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$nom_destinataire',
        style: TextStyle(
          color: Color.fromARGB(255, 81, 0, 243),
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        '$date_transition',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
      trailing: Text(
        '$montant',
        style: TextStyle(
          color: Color.fromARGB(255, 81, 0, 243),
          fontSize: 20,
        ),
      ),
    );
  }
}
