import 'package:flutter/material.dart';
import 'package:money_manager_app/pages/homepage.dart';
// ignore: unused_import
import 'package:money_manager_app/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('money');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Manager',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}
