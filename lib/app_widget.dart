import 'package:flutter/material.dart';
import 'package:teste_escribo/view/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
