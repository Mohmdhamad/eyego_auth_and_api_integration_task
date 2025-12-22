import 'package:dio/dio.dart';
import 'package:eyego_task/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:eyego_task/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:eyego_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:eyego_task/features/auth/domain/use_cases/login_use_case.dart';
import 'package:eyego_task/features/auth/domain/use_cases/register_use_case.dart';
import 'package:eyego_task/features/auth/presentation/view_model/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../database/api/api_consumer.dart';
import '../database/api/dio_consumer.dart';

final sl = GetIt.instance;

setupConfig() {
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: Dio()));
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      firebaseAuth: FirebaseAuth.instance,
      googleSignIn: GoogleSignIn.instance,
    ),
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
  sl.registerLazySingleton<AuthCubit>(() => AuthCubit());
}
