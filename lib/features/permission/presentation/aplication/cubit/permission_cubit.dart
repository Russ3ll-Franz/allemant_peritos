import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_state.dart';
part 'permission_cubit.freezed.dart';

class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit() : super(PermissionState.initial());
}
