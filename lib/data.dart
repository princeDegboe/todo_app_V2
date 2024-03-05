import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screen/accueil.dart';
import 'package:todo_app_flutter/screen/profil.dart';

List<Map<String, dynamic>> bottomList = [
  {
    'label': 'Taches',
    'icon': const Icon(Icons.task_alt_rounded),
    'active_icon': const Icon(Icons.task_alt_rounded,color: Colors.blue),
    "screen": const Accueil(),
  },
  {
    'label': 'Profil',
    'icon': const Icon(Icons.person),
    'active_icon': const Icon(Icons.person,color: Colors.blue,),
    "screen": const Profil(),
  }
];