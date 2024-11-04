import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/tourist_forms_bloc.dart';
import '../../fonts.dart';

class AddTouristSection extends StatelessWidget {
  const AddTouristSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0),)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Добавить туриста',
              style: style1,
            ),
            GestureDetector(
              onTap: () {
                if (context.read<TouristFormsBloc>().state.formKeys.length != 7) {
                  context.read<TouristFormsBloc>().add(AddFormEvent());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Максимум семь туристов"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              child: SvgPicture.asset(
                'assets/icons/add_icon.svg',
                height: 30,
              ),
            ),
          ],
        )
    );
  }
}



