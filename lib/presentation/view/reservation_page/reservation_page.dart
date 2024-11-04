import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_hotels/presentation/utils/formatting.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/payment_section.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/reservation_info_section.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/tourist_form/tourist_form.dart';

import '../../bloc/reservation_bloc.dart';
import '../../bloc/tourist_forms_bloc.dart';
import '../widgets/blue_button.dart';
import '../widgets/custom_app_bar.dart';
import 'add_tourist_section.dart';
import 'customer_form/customer_form.dart';
import 'hotel_info_section.dart';

class ReservationPage extends StatefulWidget {
  final int roomId;

  const ReservationPage({super.key, required this.roomId});

  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<ReservationBloc>()
        .add(LoadReservationByIdEvent(widget.roomId));
  }

  bool _validateAllForms() {
    bool isAllValid = true;
    if (!customerFormKey.currentState!.validate()) {
      isAllValid = false;
    }
    var formKeys = context.read<TouristFormsBloc>().state.formKeys;
    for (var formKey in formKeys) {
      if (formKey.currentState != null && !formKey.currentState!.validate()) {
        isAllValid = false;
      }
    }
    return isAllValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: customAppBar(context: context, title: 'Бронирование'),
      body: BlocBuilder<ReservationBloc, ReservationState>(
        builder: (context, state) {
          if (state is ReservationLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ReservationLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  HotelSection(
                    reservation: state.reservation,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReservationInfoSection(
                    reservation: state.reservation,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomerForm(),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<TouristFormsBloc, TouristFormsState>(
                    builder: (context, state) {
                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.formKeys.length,
                        itemBuilder: (context, index) {
                          return TouristForm(
                            touristFormKey: state.formKeys[index],
                            orderTourist: index,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AddTouristSection(),
                  const SizedBox(
                    height: 10,
                  ),
                  PaymentSection(
                    tourPrice: state.reservation.tourPrice,
                  ),
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
                      child: Column(
                        children: [
                          BlocBuilder<TouristFormsBloc, TouristFormsState>(
                            builder: (context, state2) {
                              int touristsNumber = state2.formKeys.length;
                              int payment = state.reservation.tourPrice * touristsNumber + 9300 + 2150;
                              return BlueButton(
                                text:
                                    'Оплатить ${formatPrice(payment)} ₽',
                                onPressed: () {
                                  if (_validateAllForms()) {
                                    context.push('/hotels/hotel/rooms/reservation/final');
                                  }
                                },
                              );
                            },
                          ),
                        ],
                      )),
                ],
              ),
            );
          } else if (state is ReservationError) {
            return Center(child: Text(state.message));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
