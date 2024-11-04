import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_hotels/presentation/view/rooms_page/room_card.dart';

import '../../bloc/room_bloc.dart';
import '../widgets/custom_app_bar.dart';

class RoomsPage extends StatefulWidget {
  final int roomId;
  final String title;

  const RoomsPage({super.key, required this.roomId, required this.title});

  @override
  _RoomsPageState createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  @override
  void initState() {
    super.initState();
    context.read<RoomBloc>().add(LoadRoomsByIdEvent(widget.roomId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: customAppBar(context: context, title: widget.title),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BlocBuilder<RoomBloc, RoomState>(
          builder: (context, state) {
            if (state is RoomLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is RoomLoaded) {
              return ListView.separated(
                itemCount: state.rooms.length,
                itemBuilder: (context, index) {
                  final room = state.rooms[index];
                  return RoomCard(room: room);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 14.0);
                },
              );
            } else if (state is RoomError) {
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
