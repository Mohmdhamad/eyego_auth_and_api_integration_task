import 'package:eyego_task/features/home/presentation/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/view/screens/login_screen.dart';
import '../../features/auth/presentation/view/screens/register_screen.dart';
import '../../features/auth/presentation/view_model/auth_cubit.dart';
import 'routes.dart';

class AppRoutes {
  static Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: LoginScreen(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: RegisterScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (_)=>HomeScreen());
    }
  }
}
