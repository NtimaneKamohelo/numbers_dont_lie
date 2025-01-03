import 'package:flutter/material.dart';
import 'package:numbers_dont_lie/home.dart';
import 'package:numbers_dont_lie/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NumbersListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: Home(),
      ),
    );
  }
}

