import 'package:flutter/material.dart';
import 'package:myproject/view/loginPage.dart';

void main() {
  runApp(const MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
