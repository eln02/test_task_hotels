

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/hotel_bloc.dart';
import '../widgets/custom_app_bar.dart';
import 'hotel_card.dart';

class AllHotelsPage extends StatelessWidget {
  const AllHotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Отели', showLeading: false),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BlocBuilder<HotelBloc, HotelState>(
          builder: (context, state) {
            if (state is HotelLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HotelLoaded) {
              return ListView.separated(
                itemCount: state.hotels.length,
                itemBuilder: (context, index) {
                  final hotel = state.hotels[index];
                  return HotelCard(hotel: hotel);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 14.0);
                },
              );
            } else if (state is HotelError) {
              return Center(child: Text(state.message));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}