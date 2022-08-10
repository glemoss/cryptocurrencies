import 'package:crypto_currencies/models/currency.dart';

class CurrencyRepository {
  static List<Currency> table = [
    Currency(
      icon: 'images/bitcoin.png',
      name: 'Bitcoin',
      acronym: 'BTC',
      price: 120891.00,
    ),
    Currency(
      icon: 'images/ethereum.png',
      name: 'Ethereum',
      acronym: 'ETH',
      price: 9286.00,
    ),
    Currency(
      icon: 'images/xrp.png',
      name: 'XRP',
      acronym: 'XRP',
      price: 1.92,
    ),
    Currency(
      icon: 'images/cardano.png',
      name: 'Cardano',
      acronym: 'ADA',
      price: 2.70,
    ),
    Currency(
      icon: 'images/usd.png',
      name: 'USD Coin',
      acronym: 'USDC',
      price: 0.99,
    ),
    Currency(
      icon: 'images/litecoin.png',
      name: 'Lite Coin',
      acronym: 'LTC',
      price: 313.00,
    )
  ];
}
