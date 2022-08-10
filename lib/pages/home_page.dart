import 'package:crypto_currencies/repositories/currency_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final table = CurrencyRepository.table;

    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Currencies'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int currency) {
          return ListTile(
            leading: Image.asset(table[currency].icon,),
            title: Text(table[currency].name),
            trailing: Text(table[currency].price.toString()),
          );
        },
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
