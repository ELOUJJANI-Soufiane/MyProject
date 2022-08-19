import 'package:flutter/material.dart';
import 'package:myproject/constantes.dart';
import 'package:myproject/view/card_button.dart';
import 'package:myproject/view/custom_text_field.dart';
import 'package:myproject/view/log_column.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth = FirebaseAuth.instance;

  String login = "";
  String passWord = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kRegisterButtonTitle)),
      body: SafeArea(
        child: LogColumn(
          myCard: CardButton(
            title: kRegisterButtonTitle,
            onTap: () async {
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: login, password: passWord);
              } catch (e) {
                print(e);
              }
            },
          ),
          text1: TextField(
            onChanged: (value) {
              login = value;
            },
            decoration: customDecorationField(
              kLogIcon,
              kLogTitle,
            ),
          ),
          text2: TextField(
            obscureText: true,
            onChanged: (value) {
              passWord = value;
            },
            decoration: customDecorationField(
              kPWIcon,
              kPWTitle,
            ),
          ),
        ),
      ),
    );
  }
}
