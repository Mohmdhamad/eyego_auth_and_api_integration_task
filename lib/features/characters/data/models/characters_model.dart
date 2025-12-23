import '../../../../core/database/api/end_ponits.dart';
import '../../domain/entities/characters_entity.dart';
import 'sub_model/appearance_model.dart';

class CharactersModel extends CharactersEntities {
  final List<String> aliases;
  final AppearanceModel appearance;

  CharactersModel({
    required super.actor,
    required this.appearance,
    required super.occupations,
    required this.aliases,
    required super.productions,
    required super.id,
    required super.name,
    required super.fullName,
    required super.status,
    required super.birthday,
    required super.images,
  });

  factory CharactersModel.fromJson(Map<String, dynamic> json) {
    return CharactersModel(
      actor: json[ApiKey.portrayedBy] ?? '',
      occupations: List<String>.from(json[ApiKey.occupations] ?? []),
      aliases: List<String>.from(json[ApiKey.aliases] ?? []),
      productions: List<String>.from(json[ApiKey.productions] ?? []),
      id: json[ApiKey.id],
      name: json[ApiKey.name],
      fullName: json[ApiKey.fullName],
      status: json[ApiKey.status],
      birthday: json[ApiKey.birthday],
      images: List<String>.from(json[ApiKey.images] ?? []),
      appearance: AppearanceModel.fromJson(json[ApiKey.appearance] ?? {}),
    );
  }
}
