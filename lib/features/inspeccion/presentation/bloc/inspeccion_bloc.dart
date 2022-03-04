import 'package:allemant_peritos/core/http/http_exceptions.dart';
import 'package:allemant_peritos/features/inspeccion/domain/entities/inspeccion/inspeccion.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspeccion_event.dart';
part 'inspeccion_state.dart';
part 'inspeccion_bloc.freezed.dart';

class InspeccionBloc extends Bloc<InspeccionEvent, InspeccionState> {
  InspeccionBloc() : super(const InspeccionState.initial()) {
    on<InspeccionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
