import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../view_model/characters_cubit.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Find your character',
        hintStyle: TextStyle(color: AppColors.grey, fontSize: 18),
      ),
      style: TextStyle(color: AppColors.grey, fontSize: 18),
      onChanged: (value) {
        context.read<CharactersCubit>().search(value);
      },
    );
  }
}
