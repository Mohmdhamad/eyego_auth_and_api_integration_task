import 'package:eyego_task/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:eyego_task/features/auth/domain/entities/user_entity.dart';
import 'package:eyego_task/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<UserEntity> login({
    required String email,
    required String password,
  }) async {
    final response = await remoteDataSource.login(
      email: email,
      password: password,
    );
    return response;
  }

  @override
  Future<UserEntity> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await remoteDataSource.register(
      name: name,
      email: email,
      password: password,
    );
    return response;
  }
}
