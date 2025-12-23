import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../characters/presentation/view/widgets/characters_list.dart';
import '../../../../characters/presentation/view_model/characters_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        final cubit = context.read<CharactersCubit>();

        if (state is CharactersLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.yellow),
          );
        }

        if (state is CharactersFailure) {
          return Center(
            child: Text(
              state.error,
              style: const TextStyle(color: AppColors.yellow),
            ),
          );
        }

        return CharactersList(
          characters: state is CharactersSearching
              ? cubit.searchedCharacters
              : cubit.allCharacters,
        );
      },
    );
  }
}
