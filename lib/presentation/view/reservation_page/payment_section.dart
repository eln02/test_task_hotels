import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/utils/formatting.dart';

import '../../fonts.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
      ),
      child: Column(
        children: [
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1.3),
            },
            children: [
              _data('Тур', '${formatPrice(0)} ₽'),
              _data('Топливный сбор', '${formatPrice(0)} ₽'),
              _data('Сервисный сбор', '${formatPrice(0)} ₽'),
              _data('К оплате', '${formatPrice(0)} ₽', isPay: true),
            ],
          ),
        ],
      ),
    );
  }

  TableRow _data(String text1, String text2, {bool isPay = false}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text1, style: style4, textAlign: TextAlign.left),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text2, style: isPay ? style5.copyWith(color: Colors.blue) : style5, textAlign: TextAlign.right),
        ),
      ],
    );
  }
}
