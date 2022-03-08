import 'package:allemant_peritos/features/inspeccion/data/model/inspeccion/inspeccion.dart';
import 'package:allemant_peritos/features/inspeccion/data/repositories/inspeccion_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspeccion_event.dart';
part 'inspeccion_state.dart';
part 'inspeccion_bloc.freezed.dart';

class InspeccionBloc extends Bloc<InspeccionEvent, InspeccionState> {
  InspeccionBloc(this.inspeccionRepository) : super(const InspeccionState.empty()) {
    on<_Fetchet>(_onFetchInspeccion);
  }
  static InspeccionBloc get(context) => BlocProvider.of(context);

  final InspeccionRepository inspeccionRepository;

  Future<void> _onFetchInspeccion(
    _Fetchet event,
    Emitter<InspeccionState> emit,
  ) async {
    emit(state.when(inspeccionLoaded: (inspeccionLoaded) => InspeccionState.inspeccionLoaded([...inspeccionLoaded, event.listInspeccion]), empty: () => InspeccionState.inspeccionLoaded([event.listInspeccion])));
  }
/*   void _onTodoAdded(_TodoAdded event, Emitter<TodosState> emit) {
    emit(
      state.when(
        empty: () => TodosState.data([event.todoAdded]),
        data: (todos) => TodosState.data([...todos, event.todoAdded]),
      ),
    );
  } */

  /* Stream<InspeccionState> mapEventToState(InspeccionEvent event) async* {
    if (event is InspeccionRequested) {
      yield InspeccionLoadInProgress();
      try {
        final List<Inspeccion> inspeccion = await inspeccionRepository
            .fetchListInspeccion(event.usuarioID, event.tipoInspeccion);
        yield InspeccionLoadSuccess(tipoInspeccion: inspeccion);
      } catch (_) {
        yield WeatherLoadFailure();
      }
    }
  } */

}
