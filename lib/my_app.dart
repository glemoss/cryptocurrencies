import 'package:crypto_currencies/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cryptocurrencies',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: const HomePage(),
    );
  }
}
