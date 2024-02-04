class Paiement_Favoris{
  String image;
  String nom;

  Paiement_Favoris({required this.nom, required this.image});
}

class Paiement_Facture{
  String image;
  String nom;

  Paiement_Facture({required this.nom, required this.image});
}

class Paiement_Restauration{
  String image;
  String nom;

  Paiement_Restauration({required this.nom, required this.image});
}

class Paiement_Autre{
  String image;
  String nom;

  Paiement_Autre({required this.nom, required this.image});
}


List<Paiement_Favoris> listPaiement_Favorie = [
  Paiement_Favoris(nom: 'CNPS', image: "assets/images/UBA-logo.png"),
  Paiement_Favoris(nom: 'CNPS', image: "assets/images/UBA-logo.png"),
  Paiement_Favoris(nom: 'CNPS', image: "assets/images/UBA-logo.png"),
  Paiement_Favoris(nom: 'CNPS', image: "assets/images/UBA-logo.png"),
];
List<Paiement_Facture> listPaiement_Facture = [];
List<Paiement_Restauration> listPaiement_Restauration = [];
List<Paiement_Autre> listPaiement_Autre = [];