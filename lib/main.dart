import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myproject/pages/details_page.dart';
import 'package:myproject/pages/list_page.dart';
import 'package:myproject/pages/login_page.dart';
import 'package:myproject/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/listPage': (context) => const ListPage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
