import 'package:currency_formatter/currency_formatter.dart';

class Ranfun{

  String money(double? amount){
    CurrencyFormatter cf = CurrencyFormatter();
    CurrencyFormatterSettings nairaSettings = CurrencyFormatterSettings(
      symbol:'',
      symbolSide: SymbolSide.right,
      thousandSeparator: ',',
      decimalSeparator: '.',
    );
    String formatted = cf.format(amount, nairaSettings);

    return formatted;
  }
}