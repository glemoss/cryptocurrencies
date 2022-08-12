import 'package:crypto_currencies/repositories/currency_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/currency.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final table = CurrencyRepository.table;

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  List<Currency> selected = [];

  AppBar dynamicAppBar() {
    if (selected.isEmpty) {
      return AppBar(
        title: const Text('Crypto Currencies'),
        centerTitle: true,
      );
    } else {
      return AppBar(
        leading: IconButton(
          onPressed: () => setState(() {
            selected.clear();
          }),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(selected.length.toString()),
        backgroundColor: Colors.indigo[50],
        titleTextStyle:
            const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16.0),
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 1,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star, color: Colors.indigo,))
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dynamicAppBar(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int currency) {
          return ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: (selected.contains(table[currency]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      table[currency].icon,
                    ),
                  ),
            title: Text(
              table[currency].name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            trailing: Text(real.format(table[currency].price)),
            selected: selected.contains(table[currency]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: () {
              setState(() {
                (selected.contains(table[currency]))
                    ? selected.remove(table[currency])
                    : selected.add(table[currency]);
              });
            },
          );
        },
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
