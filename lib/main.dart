import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/observer/bloc_observer.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/routes.dart';
import 'core/service_locator/service_locator.dart';
import 'core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await setupConfig();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.lightWhite),
      initialRoute: Routes.home,
      onGenerateRoute: AppRoutes.generateRoutes,
    );
  }
}
