import 'package:flutter/material.dart';
import 'package:myproject/constantes.dart';
import 'package:myproject/view/custom_text_field.dart';
import 'package:myproject/view/log_column.dart';

import '../view/card_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Project",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogColumn(
              myCard: CardButton(
                title: kButtonTitle,
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, "/listPage");
                  });
                },
              ),
              text1: TextField(
                onChanged: (value) {},
                decoration: customDecorationField(kLogIcon, kLogTitle),
              ),
              text2: TextField(
                decoration: customDecorationField(kPWIcon, kPWTitle),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/register");
              },
              child: const Text(
                "Redister now",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
