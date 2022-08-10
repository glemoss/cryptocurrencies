import 'package:crypto_currencies/repositories/currency_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final table = CurrencyRepository.table;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Currencies'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int currency) {
          return ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                table[currency].icon,
              ),
            ),
            title: Text(
              table[currency].name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text(real.format(table[currency].price)),
          );
        },
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
