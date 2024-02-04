class Banque {
  String nom;
  String description;
  String image;

  Banque({required this.nom, required this.description, required this.image});
}

List<Banque> list_banque = [
  Banque(
      nom: "UBA",
      description: "UBA Foundation Opens 2023 National Essay",
      image: "assets/images/UBA-logo.png"
  ),
];
