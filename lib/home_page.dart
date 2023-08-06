import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_textfield_formatter/my_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi TextField Formatter"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MyTextField(
              label: 'Phone Number',
              inputType: TextInputType.phone,
              formatters: [
                PhoneInputFormatter(
                    allowEndlessPhone: false, defaultCountryCode: 'US'),
              ],
            ),
            MyTextField(
              label: 'Credit Card Number',
              inputType: TextInputType.number,
              formatters: [
                CreditCardNumberInputFormatter(),
              ],
            ),
            MyTextField(
              label: 'Amount',
              inputType: const TextInputType.numberWithOptions(decimal: true),
              formatters: [
                CurrencyInputFormatter(
                  leadingSymbol: CurrencySymbols.DOLLAR_SIGN,
                ),
              ],
            ),
            MyTextField(
              label: 'Invoice Number',
              inputType: TextInputType.number,
              formatters: [
                MaskedInputFormatter('IN-###-###'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
