// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import '../../features/inspeccion/data/datasources/inspeccion_remote_datasource.dart'
    as _i3;
import '../../features/inspeccion/data/repositories/inspeccion_repository.dart'
    as _i6;
import '../../features/inspeccion/domain/repository/i_inspeccion_repository.dart'
    as _i5;
import '../http/http_methods.dart' as _i4;
import '../network/network_info.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IInspeccionRemoteDataSource>(
      () => _i3.InspeccionRemoteDataSource(helper: get<_i4.HttpMethodsType>()));
  gh.factory<_i5.IInspeccionRepository>(() => _i6.InspeccionRepository(
      remoteDataSource: get<_i3.IInspeccionRemoteDataSource>()));
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfo(get<_i8.InternetConnectionChecker>()));
  return get;
}
