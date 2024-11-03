import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/customer_form/phone_field.dart';

import '../../../fonts.dart';
import 'email_field.dart';

GlobalKey<FormState> customerFormKey = GlobalKey<FormState>();

class CustomerForm extends StatelessWidget {
  const CustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )),
      child: Form(
        key: customerFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Информация о покупателе',
              style: style1,
            ),
            const SizedBox(
              height: 10,
            ),
            const PhoneField(),
            const SizedBox(
              height: 6,
            ),
            const EmailField(),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
              style: style4,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

