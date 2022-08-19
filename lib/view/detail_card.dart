import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Text(text),
      ),
    );
  }
}
