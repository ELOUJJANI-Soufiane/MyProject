import 'package:flutter/material.dart';

class LogColumn extends StatelessWidget {
  const LogColumn({
    Key? key,
    required this.myCard,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final Widget myCard;
  final Widget text1;
  final Widget text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(padding: const EdgeInsets.all(20), child: text1),
        Container(padding: const EdgeInsets.all(20), child: text2),
        myCard,
      ],
    );
  }
}
