import 'package:eyego_task/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSource({required this.firebaseAuth});

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final response = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = response.user!;
    if (!user.emailVerified) {
      throw Exception('Email not verified');
    }
    return UserModel.fromFirebase(response.user!);
  }

  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await response.user!.updateDisplayName(name);
    await response.user!.sendEmailVerification();
    final user = response.user!;
    await user.reload();
    if (!user.emailVerified) {
      throw Exception('Please verify your email');
    }
    return UserModel.fromFirebase(response.user!);
  }
}
