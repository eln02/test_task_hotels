import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/payment_section.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/reservation_info_section.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/tourist_form/tourist_form.dart';

import '../../../domain/entities/reservations/reservation_entity.dart';
import '../../fonts.dart';
import '../widgets/blue_button.dart';
import 'add_tourist_section.dart';
import 'customer_form/customer_form.dart';
import 'hotel_info_section.dart';

class ReservationPage extends StatelessWidget {
  final ReservationEntity reservation;

  const ReservationPage({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Бронирование',
          style: style1,
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            HotelSection(
              reservation: reservation,
            ),
            const SizedBox(
              height: 10,
            ),
            ReservationInfoSection(
              reservation: reservation,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomerForm(),
            const SizedBox(
              height: 10,
            ),
            const TouristForm(),
            const SizedBox(
              height: 10,
            ),
            const AddTouristSection(),
            const SizedBox(
              height: 10,
            ),
            const PaymentSection(),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.grey[200]!, width: 1.5),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: BlueButton(text: 'Оплатить', onPressed: (){
                  customerFormKey.currentState!.validate();
                  touristFormKey.currentState!.validate();
                },)
            ),
          ],
        ),
      ),
    );
  }
}