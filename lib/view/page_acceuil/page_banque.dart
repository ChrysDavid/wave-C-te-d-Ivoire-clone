import 'package:flutter/material.dart';
import 'package:wave_clone/provider/list_banque.dart';

class Banque_Page extends StatelessWidget {
  const Banque_Page({super.key});

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
          "Votre Banque",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: list_banque.length,
        itemBuilder: (context, index) {
          Banque banck = list_banque[index];
          return ListTile(
            title: Text(banck.nom,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
            subtitle: Text(banck.description),
            leading: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red.withOpacity(0.3),
              ),
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  banck.image,
                  width: 40,
                  height: 40,
                  
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
