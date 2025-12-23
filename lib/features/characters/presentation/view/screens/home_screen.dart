import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../characters/presentation/view_model/characters_cubit.dart';
import '../widgets/home_body.dart';
import '../widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _startSearch(BuildContext context) {
    ModalRoute.of(context)!.addLocalHistoryEntry(
      LocalHistoryEntry(
        onRemove: () {
          context.read<CharactersCubit>().stopSearch();
        },
      ),
    );

    context.read<CharactersCubit>().startSearch();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CharactersCubit>();

    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.yellow,
            centerTitle: true,

            leading: cubit.isSearching
                ? BackButton(
                    color: AppColors.black,
                    onPressed: () {
                      cubit.stopSearch();
                      Navigator.pop(context);
                    },
                  )
                : const SizedBox(),

            title: cubit.isSearching
                ? const SearchWidget()
                : const Text('Characters'),

            actions: cubit.isSearching
                ? [
                    IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        cubit.clearSearch();
                      },
                    ),
                  ]
                : [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        _startSearch(context);
                      },
                    ),
                  ],
          ),
          body: const HomeBody(),
        );
      },
    );
  }
}
