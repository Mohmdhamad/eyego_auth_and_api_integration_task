import 'package:eyego_task/features/auth/domain/entities/user_entity.dart';
import 'package:eyego_task/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase({required this.repository});

  Future<UserEntity> register({
    required String email,
    required String name,
    required String password,
  }) async {
    return repository.register(name: name, email: email, password: password);
  }
}
