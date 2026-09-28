// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:motion_gallery/core/database/app_database.dart' as _i910;
import 'package:motion_gallery/core/database/daos/user_dao.dart' as _i66;
import 'package:motion_gallery/features/user/data/datasources/user_local_datasource.dart'
    as _i389;
import 'package:motion_gallery/features/user/data/repositories/user_repository.dart'
    as _i968;
import 'package:motion_gallery/features/user/domain/interfaces/user_interface.dart'
    as _i491;
import 'package:motion_gallery/features/user/domain/usecases/change_user_name_usecase.dart'
    as _i1065;
import 'package:motion_gallery/features/user/domain/usecases/get_user_usecase.dart'
    as _i85;
import 'package:motion_gallery/features/user/presentation/blocs/user_bloc.dart'
    as _i57;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i910.AppDatabase>(() => _i910.AppDatabase());
    gh.factory<_i66.UserDao>(() => _i66.UserDao(gh<_i910.AppDatabase>()));
    gh.lazySingleton<_i389.UserLocalDataSource>(
      () => _i389.UserLocalDataSourceImpl(gh<_i66.UserDao>()),
    );
    gh.lazySingleton<_i491.UserInterface>(
      () => _i968.UserRepository(
        localDataSource: gh<_i389.UserLocalDataSource>(),
      ),
    );
    gh.factory<_i1065.ChangeUserNameUseCase>(
      () => _i1065.ChangeUserNameUseCase(gh<_i491.UserInterface>()),
    );
    gh.factory<_i85.GetUserUseCase>(
      () => _i85.GetUserUseCase(gh<_i491.UserInterface>()),
    );
    gh.factory<_i57.UserBloc>(
      () => _i57.UserBloc(
        changeUserNameUseCase: gh<_i1065.ChangeUserNameUseCase>(),
        getUserUseCase: gh<_i85.GetUserUseCase>(),
      ),
    );
    return this;
  }
}
