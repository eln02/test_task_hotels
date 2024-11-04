import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TouristFormsEvent {}

class AddFormEvent extends TouristFormsEvent {}

class RemoveFormEvent extends TouristFormsEvent {
  final int index;

  RemoveFormEvent(this.index);
}

abstract class TouristFormsState {
  final List<GlobalKey<FormState>> formKeys;

  TouristFormsState(this.formKeys);
}

class TouristFormsInitial extends TouristFormsState {
  TouristFormsInitial() : super([GlobalKey<FormState>()]);
}

class TouristFormsUpdated extends TouristFormsState {
  TouristFormsUpdated(super.formKeys);
}

class TouristFormsBloc extends Bloc<TouristFormsEvent, TouristFormsState> {
  TouristFormsBloc() : super(TouristFormsInitial()) {
    on<AddFormEvent>(_onAddForm);
    on<RemoveFormEvent>(_onRemoveForm);
  }

  void _onAddForm(AddFormEvent event, Emitter<TouristFormsState> emit) {
    final updatedFormKeys = List<GlobalKey<FormState>>.from(state.formKeys)
      ..add(GlobalKey<FormState>());
    emit(TouristFormsUpdated(updatedFormKeys));
  }

  void _onRemoveForm(RemoveFormEvent event, Emitter<TouristFormsState> emit) {
    final updatedFormKeys = List<GlobalKey<FormState>>.from(state.formKeys)
      ..removeAt(event.index);
    emit(TouristFormsUpdated(updatedFormKeys));
  }
}
