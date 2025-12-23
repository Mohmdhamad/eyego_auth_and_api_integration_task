class CharactersEntities {
  final int id;
  final String name;
  final String fullName;
  final String status;
  final String birthday;
  final String actor;
  final List<String> images;
  final List<String> productions;
  final List<String> occupations;

  CharactersEntities({
    required this.actor,
    required this.productions,
    required this.id,
    required this.name,
    required this.fullName,
    required this.status,
    required this.birthday,
    required this.images,
    required this.occupations,
  });
}
