import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_hotels/presentation/utils/formatting.dart';

import '../../bloc/tourist_forms_bloc.dart';
import '../../fonts.dart';

class PaymentSection extends StatelessWidget {
  final int tourPrice;

  const PaymentSection({super.key, required this.tourPrice});

  @override
  Widget build(BuildContext context) {
    const int fuelFee = 9300;
    const int serviceFee = 2150;

    return BlocBuilder<TouristFormsBloc, TouristFormsState>(
      builder: (context, state) {
        int touristsNumber = state.formKeys.length;
        int fullPrice = tourPrice * touristsNumber;
        int payment = fullPrice + 9300 + 2150;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1.3),
                },
                children: [
                  _data('Тур', '${formatPrice(fullPrice)} ₽'),
                  _data('Топливный сбор', '${formatPrice(fuelFee)} ₽'),
                  _data('Сервисный сбор', '${formatPrice(serviceFee)} ₽'),
                  _data('К оплате', '${formatPrice(payment)} ₽', isPay: true),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  TableRow _data(String text1, String text2, {bool isPay = false}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text1,
            style: style4,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text2,
            style: isPay ? style5.copyWith(color: Colors.blue) : style5,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
