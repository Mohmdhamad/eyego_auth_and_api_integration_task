import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/observer/bloc_observer.dart';
import 'core/routes/app_routes.dart';
import 'core/service_locator/service_locator.dart';
import 'core/utils/app_sizes.dart';
import 'core/utils/app_styles.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();

  await setupConfig();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        AppSizes.init();

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          onGenerateRoute: AppRoutes.generateRoutes,
        );
      },
    );
  }
}
