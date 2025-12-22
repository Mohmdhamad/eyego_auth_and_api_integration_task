import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../domain/use_cases/login_use_case.dart';
import '../../domain/use_cases/register_use_case.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase = sl<LoginUseCase>();
  final RegisterUseCase registerUseCase = sl<RegisterUseCase>();

  AuthCubit() : super(AuthInitial());

  void login({required String email, required String password}) async {
    try {
      emit(AuthLoading());
      final user = await loginUseCase.login(email: email, password: password);
      emit(LoginSuccess(user: user));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  void register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      final user = await registerUseCase.register(
        email: email,
        name: name,
        password: password,
      );
      emit(RegisterSuccess(user: user));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}
