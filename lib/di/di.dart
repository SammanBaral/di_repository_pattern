import 'package:di_repository_pattern/data_source/local/local_data_source.dart';
import 'package:di_repository_pattern/data_source/remote/remote_data_resource.dart';
import 'package:di_repository_pattern/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initModule() {
  getIt.registerLazySingleton<RemoteDataResource>(() => RemoteDataResource());
  getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(remoteDataResource: getIt(), localDataSource: getIt()),
  );
}
