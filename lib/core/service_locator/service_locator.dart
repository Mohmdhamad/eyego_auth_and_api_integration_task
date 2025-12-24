import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/data_sources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repo_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/use_cases/login_use_case.dart';
import '../../features/auth/domain/use_cases/register_use_case.dart';
import "../../features/characters/data/data_sources/remote_data_source.dart";
import '../../features/characters/data/repositories/characters_repo_impl.dart';
import '../../features/characters/domain/repositories/characters_repository.dart';
import '../../features/characters/domain/use_cases/get_characters_use_case.dart';
import '../database/api/api_consumer.dart';
import '../database/api/dio_consumer.dart';

final sl = GetIt.instance;

setupConfig() {
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: Dio()));
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(firebaseAuth: FirebaseAuth.instance),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl<AuthRemoteDataSource>()),
  );

  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(repository: sl<AuthRepository>()),
  );
  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(repository: sl<AuthRepository>()),
  );

  sl.registerLazySingleton<CharacterRemoteDataSource>(
    () => CharacterRemoteDataSource(api: sl<ApiConsumer>()),
  );
  sl.registerLazySingleton<CharacterRepository>(
    () => CharactersRepoImpl(remoteDataSource: sl<CharacterRemoteDataSource>()),
  );
  sl.registerLazySingleton<GetCharactersUseCase>(
    () => GetCharactersUseCase(repository: sl<CharacterRepository>()),
  );
}
