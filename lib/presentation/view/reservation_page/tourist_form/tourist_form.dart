import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/tourist_form/usual_field.dart';

import '../../../fonts.dart';
import 'birth_field.dart';

GlobalKey<FormState> touristFormKey = GlobalKey<FormState>();


class TouristForm extends StatefulWidget {
  const TouristForm({super.key});

  @override
  State<TouristForm> createState() => _TouristFormState();
}

class _TouristFormState extends State<TouristForm> {
  bool _isVisible = true;
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
        key: touristFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Первый турист',
                  style: style1,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: SvgPicture.asset(
                    _isVisible ? 'assets/icons/collapse_icon.svg' : 'assets/icons/more_icon.svg',
                    height: 30,
                  ),
                ),
              ],
            ),
            Visibility(
                visible: _isVisible,
                maintainState: true,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    UsualTextField(text: 'Имя'),
                    SizedBox(
                      height: 10,
                    ),
                    UsualTextField(text: 'Фамилия'),
                    SizedBox(
                      height: 10,
                    ),
                    BirthField(),
                    SizedBox(
                      height: 10,
                    ),
                    UsualTextField(text: 'Гражданство'),
                    SizedBox(
                      height: 10,
                    ),
                    UsualTextField(text: 'Номер загранпаспорта'),
                    SizedBox(
                      height: 10,
                    ),
                    UsualTextField(text: 'Срок действия загранпаспорта'),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

