import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/reservations/reservation_entity.dart';
import '../../domain/use_cases/get_reservation_by_id.dart';

abstract class ReservationState {}

class ReservationInitial extends ReservationState {}

class ReservationLoading extends ReservationState {}

class ReservationLoaded extends ReservationState {
  final ReservationEntity reservation;

  ReservationLoaded(this.reservation);
}

class ReservationError extends ReservationState {
  final String message;

  ReservationError(this.message);
}

abstract class ReservationEvent {}

class LoadReservationByIdEvent extends ReservationEvent {
  final int reservationId;

  LoadReservationByIdEvent(this.reservationId);
}

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final GetReservationByIdUseCase getReservationByIdUseCase;

  ReservationBloc(this.getReservationByIdUseCase)
      : super(ReservationInitial()) {
    on<LoadReservationByIdEvent>(_onLoadReservationById);
  }

  Future<void> _onLoadReservationById(
      LoadReservationByIdEvent event, Emitter<ReservationState> emit) async {
    emit(ReservationLoading());
    try {
      final reservation =
          await getReservationByIdUseCase.call(event.reservationId);
      emit(ReservationLoaded(reservation));
    } catch (e) {
      emit(ReservationError(
          "Не удалось загрузить бронирование: ${e.toString()}"));
    }
  }
}
