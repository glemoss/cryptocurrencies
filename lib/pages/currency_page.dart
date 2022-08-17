import 'package:crypto_currencies/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  final Currency currency;

  const CurrencyPage({Key? key, required this.currency}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currency.name),
        centerTitle: true,
      ),
    );
  }
}
