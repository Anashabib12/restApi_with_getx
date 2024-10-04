import 'package:flutter/material.dart';
import 'package:restapi_with_getx/view/user/user_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: UserView());
  }
}
