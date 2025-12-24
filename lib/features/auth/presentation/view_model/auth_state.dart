import '../../domain/entities/user_entity.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class LogoutState extends AuthState {}

final class LoginSuccess extends AuthState {
  final UserEntity user;
  LoginSuccess({required this.user});
}

final class RegisterSuccess extends AuthState {
  final UserEntity user;
  RegisterSuccess({required this.user});
}


final class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}
