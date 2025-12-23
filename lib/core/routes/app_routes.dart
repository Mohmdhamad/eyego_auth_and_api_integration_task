import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/view/screens/login_screen.dart';
import '../../features/auth/presentation/view/screens/register_screen.dart';
import '../../features/auth/presentation/view_model/auth_cubit.dart';
import '../../features/characters/domain/entities/characters_entity.dart';
import '../../features/characters/presentation/view/screens/details_screen.dart';
import '../../features/characters/presentation/view/screens/home_screen.dart';
import '../../features/characters/presentation/view_model/characters_cubit.dart';
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
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => CharactersCubit()..getCharacter(),
            child: HomeScreen(),
          ),
        );
      case Routes.details:
        final character = settings.arguments as CharactersEntities;
        return MaterialPageRoute(
          builder: (_) => DetailsScreen(character: character),
        );
    }
  }
}
