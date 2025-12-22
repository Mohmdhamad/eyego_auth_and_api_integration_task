import 'package:eyego_task/features/auth/domain/entities/user_entity.dart';
import 'package:eyego_task/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  Future<UserEntity> login({
    required String email,
    required String password,
  }) async {
    return repository.login(email: email, password: password);
  }
}
