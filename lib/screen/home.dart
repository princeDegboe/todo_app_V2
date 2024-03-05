import 'package:flutter/material.dart';
import 'package:todo_app_flutter/data.dart';
import 'package:todo_app_flutter/screen/accueil.dart';
import 'package:todo_app_flutter/widgets/custom_bottom_navigator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget content = const Accueil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content,
      bottomNavigationBar: CustomBottomNavigator(
        bottomData: bottomList,
        takeCurrentIndex: (currentIndex) {
          setState(() {
            content = bottomList[currentIndex]['screen'];
          });
        },
      ),
    );
  }
}
