import '../../../../../core/database/api/end_ponits.dart';

class AppearanceModel {
  final List<int> breakingBad;
  final List<int> betterCallSaul;
  final List<int> elCamino;

  AppearanceModel({
    required this.breakingBad,
    required this.betterCallSaul,
    required this.elCamino,
  });

  factory AppearanceModel.fromJson(Map<String, dynamic> json) {
    return AppearanceModel(
      breakingBad: List<int>.from(json[ApiKey.breakingBad]),
      betterCallSaul: List<int>.from(json[ApiKey.betterCallSaul]),
      elCamino: List<int>.from(json[ApiKey.camino]),
    );
  }
}
