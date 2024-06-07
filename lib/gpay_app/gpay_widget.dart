import 'package:flutter/material.dart';

class PaymentParameters extends StatelessWidget {
  final String record;
  final String text;

  const PaymentParameters({
    super.key,
    required this.record,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          record,
          height: 30,
          width: 30,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
