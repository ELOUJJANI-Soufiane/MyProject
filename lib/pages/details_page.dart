import 'package:flutter/material.dart';
import 'package:myproject/view/detail_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            DetailCard(text: "Voiture : "),
            DetailCard(text: "Marque : "),
            DetailCard(text: "Model : "),
            DetailCard(text: "Tache :  "),
            DetailCard(text: "Prix bute : "),
            DetailCard(text: "Prix Net : "),
          ],
        ),
      ),
    );
  }
}
