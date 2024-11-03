import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/widgets/blue_button.dart';

import '../fonts.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey[200]!, width: 1.5),
            ),
          ),
          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
          child: BlueButton(
            text: 'Супер!',
            onPressed: () {},
          )),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Заказ оплачен',
          style: style1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[100],
                child: Image.asset(
                  'assets/images/party_image.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Ваш заказ принят в работу',
              style: style1,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Подтвержение заказа может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                textAlign: TextAlign.center,
                style: style4.copyWith(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
