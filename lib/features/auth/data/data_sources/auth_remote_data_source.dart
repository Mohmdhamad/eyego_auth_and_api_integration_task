import 'package:eyego_task/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthRemoteDataSource({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final response = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return UserModel.fromFirebase(response.user!);
  }

  // Future<UserModel> loginWithGoogle() async {
  //   final googleUser = await googleSignIn.signIn();
  //   if (googleUser == null) {
  //     throw Exception('Google sign in aborted');
  //   }
  //
  //   final googleAuth = await googleUser.authentication;
  //
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //
  //   final result =
  //   await firebaseAuth.signInWithCredential(credential);
  //
  //   return UserModel.fromFirebase(result.user!);
  // }

  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    response.user!.updateDisplayName(name);
    return UserModel.fromFirebase(response.user!);
  }
}
