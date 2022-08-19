import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(20),
        color: Theme.of(context).colorScheme.primary,
        child: Container(
          // decoration: const BoxDecoration(
          //   borderRadius: BorderRadius.all(20),
          // ),
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
